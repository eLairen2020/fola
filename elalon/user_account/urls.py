from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path("register", views.register_user, name ='register'),
    path('signin', views.signin, name ='signin'),
    path('logout', views.logoutUser, name='logoutUser'),
    path('myprofile/', views.myprofile, name='myprofile'),
    path('myprofileedit/', views.myprofileedit, name='myprofileedit')
]
