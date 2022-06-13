from django.shortcuts import render
from web_shopping.persistence.models import Country
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

headers = ['id', 'country_name', 'alpha2_code', 'alpha3_code', 'numeric_country', 'country_detail']

def load(request): 
    countries = []

    try:
        paginator = Paginator(find_all(), 10)
        page = request.GET.get('page', 1)        
        countries = paginator.page(page)
    except PageNotAnInteger:
        countries = paginator.page(1)
    except EmptyPage:
        countries = paginator.page(paginator.num_pages)

    return render(request, 'country.html', {'headers' : headers, 'countries' : countries, 'size': paginator.num_pages})

def paginator():
    return ''

def find_all():
    return Country.objects.all()