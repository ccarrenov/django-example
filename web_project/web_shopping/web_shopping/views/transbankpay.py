from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, HttpRequest
import datetime as dt
from transbank.error.transbank_error import TransbankError
from transbank.webpay.webpay_plus.transaction import Transaction
from transbank.common.options import WebpayOptions
from transbank.common.integration_commerce_codes import IntegrationCommerceCodes
from transbank.common.integration_api_keys import IntegrationApiKeys
from web_shopping.views import carts


def webpay_plus_create(request):
    print("Webpay Plus Transaction.create")
    amount = request.POST.get('amount')
    buy_order = request.POST.get('buy_order')
    session_id = request.POST.get('session_id')  
    return_url = request.build_absolute_uri(location='commit-pay/')
    print('buy_order: {0}'.format(buy_order))
    print('session_id: {0}'.format(session_id))
    print('amount: {0}'.format(amount))
    print('return_url: {0}'.format(return_url))
    print('request.headers: {0}'.format(request.headers))

    tx = Transaction(WebpayOptions(IntegrationCommerceCodes.WEBPAY_PLUS, IntegrationApiKeys.WEBPAY))
    response = tx.create(buy_order, session_id, amount, return_url)
    print('response: {0}'.format(response))

    return render(request, 'send-pay.html', {'response': response, 'amount': amount}) 

@csrf_exempt
def commitpay(request):
    print('commitpay')
    print('request: ', request.POST)
    token = request.GET.get('token_ws')
    TBK_TOKEN = request.POST.get('TBK_TOKEN')
    TBK_ID_SESSION = request.POST.get('TBK_ID_SESSION')
    TBK_ORDEN_COMPRA = request.POST.get('TBK_ORDEN_COMPRA')
    
    #TRANSACCIÓN REALIZADA
    if TBK_TOKEN is None and TBK_ID_SESSION is None  and TBK_ORDEN_COMPRA is None and token is not None:
        #APROBAR TRANSACCION
        tx = Transaction(WebpayOptions(IntegrationCommerceCodes.WEBPAY_PLUS, IntegrationApiKeys.WEBPAY))
        response = tx.commit(token=token)
        status = response.get('status')
        buy_order = response.get('buy_order')
        session_id = response.get('session_id')

        print('status: ', status)
        response_code = response.get('response_code')
        print('response_code: ', response_code)
        #TRANSACCIÓN APROBADA
        if status == 'AUTHORIZED' and response_code == 0:
            carts.delete_carts(session_id)
            state = ''
            if response.get('status') == 'AUTHORIZED':
                state = 'Aceptado'
            pay_type = ''
            if response.get('payment_type_code') == 'VD':
                pay_type = 'Tarjeta de Débito'
            amount = int(response.get('amount'))
            amount = f'{amount:,.0f}'.replace(',', '.')
            transaction_date = dt.datetime.strptime(response.get('transaction_date'), '%Y-%m-%dT%H:%M:%S.%fZ')
            transaction_date = '{:%d-%m-%Y %H%M:%S}'.format(transaction_date)
            transaction_detail = {
                'card_number': response.get('card_detail').get('card_number'),
                'transaction_date': transaction_date,
                'state': state,
                'pay_type': pay_type,
                'amount': amount,
                'authorization_code': response.get('authorization_code'),
                'buy_order': response.get('buy_order')
            }
            return render(request, 'commit-pay.html', {'transaction_detail': transaction_detail})
        else:
            return HttpResponse('ERROR EN LA TRANSACCIÓN, SE RECHAZA LA TRANSACCIÓN')
    else:                             
        return HttpResponse('ERROR EN LA TRANSACCIÓN, SE CANCELO EL PAGO')


