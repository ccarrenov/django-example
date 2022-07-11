from django.shortcuts import render, redirect
from web_shopping.persistence.models import Carts, AuthUser, Product, Product_Stock
from web_shopping.views.login import authorization
from django.contrib.auth.models import User
from typing import Iterable
import random

def load(request):
    auth, error = authorization(request, 'view_carts')
    if not auth:
        return redirect(error)  
    print('page building')
    carts = []
    products_stock = []
    buy_order = str(random.randrange(1000000, 99999999))
    try: 
        username = str(request.user)
        print('username: ', username)
        print('load user')
        user = AuthUser.objects.get(username=username)
        session_id = str(user.id)    
        print('load carts')        
        carts = Carts.objects.filter(user=user)
        for cart in carts:
            try:
                products_stock.append(Product_Stock.objects.get(id=cart.product.id))
            except Exception as ex:
                print('Error: ', ex)
                print('not stock product id -> ', cart.id)
    except Exception as ex:
        print('Error: ', ex)
    return render(request, 'carts.html', {'carts': carts, 'products_stock': products_stock, 'quantity': load_carts(request), 'total': total(carts, products_stock), 'buy_order': buy_order, 'session_id': session_id})

def total(carts, products_stock):
    total = 0
    for cart in carts:
        for product_stock in products_stock:
            if product_stock.id == cart.product.id:
                total = total + cart.quantity * product_stock.unit_sell_price
    return total

def load_carts(request):
    print('load carts from user')
    quantity = 0
    try:
        username = str(request.user)
        print('username: ', username)
        print('load user')
        user = AuthUser.objects.get(username=username)
        print('load carts')
        carts = Carts.objects.filter(user=user)
        for cart in carts:
            quantity = quantity + cart.quantity
    except Exception as ex:
        print('Error ', ex)
    print('quantity: ', quantity)
    return quantity

def add_product(product_id, username):
    print('add product carts')
    try:
        print('find product')
        product = Product.objects.get(id=product_id)
        print('load product')
        print('find user')
        user = AuthUser.objects.get(username=username)
        print('load user')
        carts = None
        try:
            print('find carts')
            carts = Carts.objects.filter(user=user)
            print('load carts')
            is_product = False
            #if isinstance(carts, Iterable):
            for cart in carts:
                if cart.product.id == product.id:
                    print('add unity from product')
                    cart.quantity = cart.quantity + 1
                    cart.save(force_update=True)                
                    is_product = True
            if is_product == False: 
                print('add product from cart')
                cart = Carts()
                cart.user = user
                cart.product = product
                cart.quantity = 1
                cart.save()                                
        except Exception as ex:
            print('Error: ', ex)
    except Exception as ex:
        print('Error: ', ex)

def delete_carts(user_id):
    print('delete_carts')
    try:
        user = AuthUser.objects.get(id=user_id)
        carts = Carts.objects.filter(user=user)
        #delete carts
        for cart in carts:
            cart.delete()
    except Exception as ex:
        print('Error: ', ex)