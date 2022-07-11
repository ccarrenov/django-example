from django.shortcuts import render, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from web_shopping.persistence.models import Country
from web_shopping.views.login import authorization

def load(request):
    auth, error = authorization(request, 'view_city')
    if not auth:
        return redirect(error)  
    print('page building')
    return render(request, 'city.html')
