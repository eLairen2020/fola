from django.shortcuts import render, redirect 
from django.http import HttpResponse
from django.contrib.auth.models import User, auth
from django.forms import inlineformset_factory

from django.contrib import messages 

from django.db.models import Q

from django.views.generic import ListView
from django.core.paginator import Paginator

from django.contrib.auth.forms import UserCreationForm

from courses.models import Courses, Categories, Instructor, Enotes
from blog.models import Blog
from user_accounts.models import User_profile

def eMahei(request):
    messages.warning(request, " Dear Users, this is a Beta version. Most of the contents are for trial run and we do not posses its copyrights." )
    courses= Courses.objects.all().order_by('-lastupdate')
    cat = Categories.objects.all()
    blog = Blog.objects.all().order_by('-date_of_publish')
    instructor = Instructor.objects.all()
    enotes = Enotes.objects.all()

    
    

    

    user_= request.user
    name = user_.username
    if user_.is_authenticated:
        
        profile = User_profile.objects.filter(username=user_)
        messages.info(request, "Hello "+ name )
    else :
        profile = User_profile.objects.filter(username=1)

    
    


   
    return render(request, "index.html",{'Courses':courses, 'cat_nav':cat,"profile":profile,'blog':blog,'inst':instructor,'enotes':enotes});




    
def searchresult(request):
    category = Categories.objects.all()
    query = request.GET.get('s')
    if request.method =="GET":
        result = Courses.objects.filter(Q(title__icontains=query)| Q(instructor__firstname__icontains=query))
    
        result2 = Blog.objects.filter(Q(title__icontains=query) | Q(author__icontains=query))

        
    
        

    
    return render(request, "search_result.html",{'cat_nav':category,'result':result,'result2':result2, 'query':query})
    

def aboutus(request):
    category = Categories.objects.all()
    return render(request, "aboutus.html",{'cat_nav':category})
    
def adityapech(request):
    
    return render(request, "aditya_profile.html")

def hemantaph(request):
    
    return render(request, "hemanta_profile.html")

    