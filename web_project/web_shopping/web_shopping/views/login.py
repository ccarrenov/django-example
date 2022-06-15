from django.shortcuts import redirect, render
from django.contrib.auth import login, authenticate


def authentication(request):
    if request.method == 'POST':
        try:
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(username=username, password=password)
            login(request, user)            
        except Exception as e:
            print('Error: ', e)
    return redirect('home/')

def authorization(request, perm):
    if request.user != None:
        if request.user.has_perm(perm):
            return True
        else:
            return False
    else:
        return False
