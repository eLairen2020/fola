from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.models import User, auth
from django.forms import inlineformset_factory
from django.views.generic import ListView
from django.contrib import messages




from django.contrib.auth.forms import UserCreationForm
from blog.forms import CommentForm
from django.core.paginator import Paginator

from courses.models import Categories
from blog.models import Blog, Blog_category, Comment, subcomment, BlogComment
from taggit.models import Tag

# Create your views here.

def blog(request):
    categories = Categories.objects.all()
    blog = Blog.objects.all().order_by('-date_of_publish')
    tag_all = Tag.objects.all()
    cont = Blog_category.objects.all()
    paginator = Paginator(blog, 2)
    page = request.GET.get('page')
    blog = paginator.get_page(page)


    return render(request, "blog-content.html", {'cat_nav':categories, 'category': cont, 'tag_all': tag_all, 'bcont': blog});

def blog_cat(request,id):
    categories = Categories.objects.all()
    tag_all = Tag.objects.all()
    isinstance = get_object_or_404(Blog_category,pk=id)
    cont = Blog_category.objects.all()
    blog = Blog.objects.filter(category=isinstance).order_by('-date_of_publish')
    paginator = Paginator(blog, 2)
    page = request.GET.get('page')
    blog = paginator.get_page(page)
    

    return render(request, "blog-content.html", {'cat_nav':categories, 'category': cont, 'tag_all': tag_all, 'bcont': blog});


def blog_details(request,id):
    categories = Categories.objects.all()
    tag_all = Tag.objects.all()
    isinstance = get_object_or_404(Blog,pk=id)
    comments = Comment.objects.filter(post=isinstance)
    sub_comments = subcomment.objects.filter(main_comment=comments)
    cont = Blog_category.objects.all()
    blog = Blog.objects.filter(title=isinstance)

    
    

    return render(request, "blog-content_details.html", {'cat_nav':categories, 'category': cont, 'tag_all': tag_all, 'bcont': blog, 'com': comments, 's_com': sub_comments  });
    
def tagged(request, slug):
    categories = Categories.objects.all()
    tag_all = Tag.objects.all()
    cont = Blog_category.objects.all()
    tag = get_object_or_404(Tag, slug=slug)
    
    blog = Blog.objects.filter(tags=tag)

    paginator = Paginator(blog, 3)
    page = request.GET.get('page')
    blog = paginator.get_page(page)
   
    
    context = {
        'tag':tag,
        'bcont': blog,
        'cat_nav':categories,
        'category': cont,
        'tag_all': tag_all,
    }
    return render(request, 'blog-content.html', context)

'''
def blog_details(request,id):
    categories = Categories.objects.all()
    isinstance = get_object_or_404(Blog,pk=id)
    

    cont = Blog_category.objects.all()
    blog = Blog.objects.filter(title=isinstance)

    comments= BlogComment.objects.filter(post=isinstance)

    

    return render(request, "blog-content_details.html", {'cat_nav':categories, 'category': cont, 'bcont': blog, 'com': comments   });

'''
def postcomment(request):


    if request.method=="POST" :
        comment_ = request.POST.get('comments')
        user = request.user
        id_= request.POST.get('postSno')
        #isinstance = get_object_or_404(Blog,pk=id)
        post = Blog.objects.get(id=id_)

        BlogComment.objects.create(
            comment = comment_,
            user = user,
            blog = post,
        )
        print(comment_)
        return HttpResponse('Success');
   

