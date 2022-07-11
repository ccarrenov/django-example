from django.shortcuts import render
from pathlib import Path
import glob, os
from web_shopping.persistence.models import Product_Stock
from web_shopping.views import carts

def load(request):

    if request.method == 'GET':
        try:
            product_id = request.GET.get('product_id')
            print('product_id: ', product_id)
            username = str(request.user)
            print('username: ', username)
            carts.add_product(product_id, username)
        except Exception as ex:
            print('Error ', ex)
    quanty = carts.load_carts(request)
    return render(request, 'product.html', {'products' : load_product(), 'quanty': quanty})

def load_product():
    return Product_Stock.objects.all()

