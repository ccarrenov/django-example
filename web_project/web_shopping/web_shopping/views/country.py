from django.shortcuts import render
from web_shopping.persistence.models import Country
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

headers = ['id', 'country_name', 'alpha2_code',
           'alpha3_code', 'numeric_country', 'country_detail']


def load(request):
    countries = []
    try:
        paginator = Paginator(find_all(), 10)
        page = request.GET.get('page', 1)
        if int(page) < 1:
            page = 1
        countries = paginator.page(page)
        size = paginator.num_pages
    except (PageNotAnInteger, ValueError):
        print('page not an integer')
        page = 1
        countries = paginator.page(1)
        size = paginator.num_pages
    except EmptyPage:
        print('empty page')
        countries = paginator.page(paginator.num_pages)
        size = paginator.num_pages
        page = size

    return render(request, 'country.html', {'headers': headers, 'countries': countries, 'size': size, 'options': load_options(size), 'page': page})


def load_options(size):
    options = []
    if size != None:
        for i in range(1, size):
            options.append(i)
    return options


def find_all():
    return Country.objects.all()
