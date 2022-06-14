from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate


def authentication(request):
    if request.method == 'POST':
        try:
            username = request.POST.get('username')
            password = request.POST.get('password')
            print(username)
            print(password)
            user = authenticate(username=username, password=password)
            login(request, user)            
        except Exception as e:
            print('Error: ', e)
    return redirect('home/')