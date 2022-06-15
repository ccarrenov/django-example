"""web_shopping URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from web_shopping.views import index
from web_shopping.views import country
from web_shopping.views import login
from web_shopping.views import logout
from web_shopping.views import user
from web_shopping.api   import authentication
from web_shopping.views import model_register

model_register.load()

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index.load),
    path('home/', index.load),
    path('country/', country.load),
    path('login', login.authentication),
    path('logout', logout.logout_user),
    path('edit-user/', user.load),
    path('api/v1/token', authentication.token),
]
