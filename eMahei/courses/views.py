from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.contrib.auth.models import User, auth
from django.forms import inlineformset_factory
from django.views.generic import ListView
from django.core.paginator import Paginator
from user_accounts.models import User_profile


from django.contrib import messages 

from django.contrib.auth.forms import UserCreationForm

from courses.models import Courses, Categories, Chapter, Topics, Instructor, FAQ, Enotes, Ebooks, Course_enroll_details

# Create your views here.

def coursedetails(request, id=None):
    isinstance = get_object_or_404(Courses,pk=id)
    if request.method == "POST":
        user = request.user
        
        pay_ = request.POST.get('pay')
        Course_enroll_details.objects.create(
            student_name = user,
            course_name = isinstance,
            payment_details = pay_,
        )

    categories = Categories.objects.all()
    chapter1 = Chapter.objects.filter(course_name=isinstance).order_by('chapter_no')
    chapter2 = Chapter.objects.filter(course_name=isinstance).count()
    faqs = FAQ.objects.filter(course_name=isinstance)
    user_ = request.user.id
    mycourse = Course_enroll_details.objects.filter(student_name=user_,course_name=isinstance)
    user_= request.user
    if user_.is_authenticated:
        
        profile = User_profile.objects.filter(username=user_)
    else :
        profile = User_profile.objects.filter(username=1)
    return render(request, "coursedetails.html", {'Courses':isinstance,
    'cat_nav':categories,
    'chapt': chapter1,
    'count': chapter2,
    'faqs' : faqs,
    'mycourse':mycourse,
    'profile':profile

    });

'''
class CategoriesListView(ListView):
    model = Categories
    template_name = "allcourses.html"

    def get_queryset(self):
        return Categories.objects.all()
'''


def allcourses(request,id):

    isinstance = get_object_or_404(Categories,pk=id)
    category = Categories.objects.all()
    courses = Courses.objects.filter(category_id=isinstance)
    paginator = Paginator(courses, 3)
    page = request.GET.get('page')
    courses = paginator.get_page(page)
    user_= request.user
    if user_.is_authenticated:
        
        profile = User_profile.objects.filter(username=user_)
    else :
        profile = User_profile.objects.filter(username=1)
    return render(request, "allcourses.html",{'categories':isinstance, 'course':courses,'cat_nav': category ,'profile':profile});


def video(request,id):
    isinstance = get_object_or_404(Courses,pk=id)
    user_= request.user
    categories = Categories.objects.all()
    chapter1 = Chapter.objects.filter(course_name=isinstance).order_by('chapter_no')
    chapter2 = Chapter.objects.filter(course_name=isinstance).count()
    faqs = FAQ.objects.filter(course_name=isinstance)
    mycourse = Course_enroll_details.objects.filter(student_name=user_,course_name=isinstance)
    if user_.is_authenticated:

        profile = User_profile.objects.filter(username=user_)
    else :
        profile = User_profile.objects.filter(username=1)

    
    enrolluser = Course_enroll_details.objects.filter(student_name=user_,course_name=isinstance)
    if enrolluser: 
        category = Categories.objects.all()

        chapter1 = Chapter.objects.filter(course_name=isinstance).order_by('chapter_no')
        chapter2 = Chapter.objects.filter(course_name=isinstance).count()
        course = Courses.objects.filter(title=isinstance)
        faqs = FAQ.objects.filter(course_name=isinstance)
        notes = Enotes.objects.filter(course_name=isinstance)


        user_= request.user
        if user_.is_authenticated:

            profile = User_profile.objects.filter(username=user_)
        else :
            profile = User_profile.objects.filter(username=1)
    else:
        return HttpResponse('<h1>page not found. Go back to previous page</h1>')
    

    return render(request, "mainvideo.html",{'cat_nav':category, 'chapt': chapter1, 'count': chapter2, 'enotes': notes, 'faqs': faqs, 'course': course ,'profile':profile});



def videoplay(request,id):
    category = Categories.objects.all()
    isinstance = get_object_or_404(Topics,pk=id)
    top = Topics.objects.get(name=isinstance)
    c_name = top.chapter.course_name.id
    d_name = top.chapter.id
    course_all = Courses.objects.get(id=c_name)
    chapter = Chapter.objects.filter(course_name=course_all)
    chapter2 = Chapter.objects.filter(course_name=course_all).count()
    faqs = FAQ.objects.filter(course_name=course_all)
    notes = Enotes.objects.filter(course_name=course_all).order_by('chapter_name')

    user_= request.user
    if user_.is_authenticated:
        
        profile = User_profile.objects.filter(username=user_)
    else :
        profile = User_profile.objects.filter(username=1)
    
    return render(request, "mainvideoplay.html",{'cat_nav':category, 'chap': chapter,'topic':top,'enotes': notes, 'count': chapter2,'faqs': faqs, 'cour': course_all,'profile':profile });


def mycourses(request):
    category = Categories.objects.all()
    user_ = request.user
    mycourse = Course_enroll_details.objects.filter(student_name=user_)
    paginator = Paginator(mycourse, 3)
    page = request.GET.get('page')
    mycourse = paginator.get_page(page)

    user_= request.user
    if user_.is_authenticated:
        
        profile = User_profile.objects.filter(username=user_)
    else :
        profile = User_profile.objects.filter(username=1)
    
    return render(request, "mycourses.html" ,{'cat_nav':category, 'mycourse':mycourse,'profile':profile})



    
    











