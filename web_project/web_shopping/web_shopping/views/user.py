from django.shortcuts import redirect, render
from django.contrib.auth import login, authenticate


def load(request):
    current_user = request.user
    if request.method == 'POST':
        try:
            current_user.first_name = request.POST.get('first-name')
            current_user.last_name = request.POST.get('last-name')
            current_user.email = request.POST.get('email')
            current_user.set_password(request.POST.get('password'))
            current_user.save(force_update=True)
            state = True
            message = 'user updated.'
        except Exception as e:
            print('Error: ', e)
            state = False
            message = 'error in updated.'            
    elif request.method == 'GET':
        print('GET')
        print('current_user.id: ', current_user.id)
        print('current_user: ', current_user.username)
        state = None
        message = None  
    return render(request, 'edit-user.html', {'state': state, 'message': message})
