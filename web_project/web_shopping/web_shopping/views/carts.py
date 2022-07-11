from django.shortcuts import render, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from web_shopping.persistence.models import Country, Carts, AuthUser, Product
from web_shopping.views.login import authorization
from django.contrib.auth.models import User

def load(request):
    quanty = load_carts(request)
    auth, error = authorization(request, 'view_carts')
    if not auth:
        return redirect(error)  
    print('page building')
    return render(request, 'carts.html', {'quanty': quanty})

def load_carts(request):
    quanty = 0
    try:
        username = str(request.user)
        print('username: ', username)
        user = AuthUser.objects.get(username=username)
        print('user: ', user.username)
        carts = Carts.objects.get(user=user)
        for car in carts:
            quanty = quanty + car.quanty
    except Exception as ex:
        print('Error ', ex)
    return quanty

def add_product(product_id, username):
    try:
        product = Product.objects.get(id=product_id)
        user = AuthUser.objets.get(username=username)
        carts = None
        try:
            carts = Carts.objects.get(user=user)
            is_product = False
            for car in carts:
                if car.product.id == product.id:
                    car.quanty = car.quanty + 1
                    cart.save(force_upate=True)                
                    is_product = True
            if is_product == False: 
                cart = Carts()
                cart.user = user
                cart.product = product
                cart.quanty = 1
                cart.save()                
                
        except Exception as ex:
            cart = Carts()
            cart.user = user
            cart.product = product
            cart.quanty = 1
            cart.save()
    except Exception as ex:
        print('Error: ', ex)
