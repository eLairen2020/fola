from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect, get_object_or_404
from django import forms
from django.contrib.auth.models import User, auth
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from .forms import SignUpForm, ImageForm
from django.http import HttpResponse

from django.contrib import messages 
from .models import User_profile
from django.forms import ModelForm
from courses.models import Categories 
from user_accounts.models import User_profile


def register_user(request):
	form = SignUpForm(request.POST)
	if request.method == 'POST':
		form = SignUpForm(request.POST)
		if form.is_valid():
			user = form.save()
			
			user.refresh_from_db()
			user_profile = User_profile()
			user_profile.first_name = 'first_name'
			user_profile.username = user
			user_profile.save()


			username = form.cleaned_data.get('username')
			raw_password = form.cleaned_data.get('password1')
			user = authenticate(username=username, password=raw_password)
			login(request, user)
			messages.info(request, 'Login Successfully')
			return redirect('eMahei')
		

	categories = Categories.objects.all()
	return render(request, 'register.html', {'cat_nav':categories, 'form':form})



def signin(request):
	if request.method == 'POST':
		username = request.POST.get('username')
		password = request.POST.get('password')

		user = authenticate(request, username=username, password=password)

		if user is not None:
			login(request, user)
			messages.info(request, 'Login Sucessfully!')
			
			return redirect('eMahei')
		else:
			messages.info(request, 'Username OR password is incorrect')

	
		
	
	categories = Categories.objects.all()
	
	return render(request, 'signin.html', {'cat_nav':categories})

def logoutUser(request):
	logout(request)
	messages.info(request, 'Logout Sucessfully!')
	
	return redirect('eMahei')

def myprofile(request):
	category = Categories.objects.all()
	user_= request.user
	profile = User_profile.objects.filter(username=user_)


	return render(request, "myprofile.html" ,{'cat_nav':category, 'profile':profile })

def myprofileedit(request):
	category = Categories.objects.all()
	
	
	user_= request.user
	profile = User_profile.objects.filter(username=user_)
	count = User_profile.objects.filter(username=user_).count
	form = PasswordChangeForm(request.user)
	form2 = ImageForm(request.POST or None, request.FILES or None)

	if request.method == 'POST' and 'submit_basic' in request.POST:
		first_name = request.POST.get('first_name')
		last_name = request.POST.get('last_name')
		phone = request.POST.get('phone')
		occupation = request.POST.get('occupation')
		language = request.POST.get('language')
		address = request.POST.get('address')
		about = request.POST.get('about')
		id = request.POST.get('id')

		edit_user_profile = User_profile.objects.get(pk=id)
		edit_user_profile.first_name = first_name
		edit_user_profile.last_name = last_name
		edit_user_profile.phone = phone
		edit_user_profile.occupation = occupation
		edit_user_profile.language = language
		edit_user_profile.address = address
		edit_user_profile.say_something_about_yourself = about

		edit_user_profile.save()

		
		return redirect ('myprofile')



	elif request.method == 'POST' and 'submit_email' in request.POST:
		email = request.POST.get('email')
		user = request.user.id
		edit_user = User.objects.get(pk=user)
		edit_user.email = email
		edit_user.save()
		
		return redirect ('myprofile')

	elif request.method == 'POST' and 'submit_password' in request.POST:
		form = PasswordChangeForm(request.user, request.POST)
		if form.is_valid():
			user = form.save()
			update_session_auth_hash(request, user)
			messages.success(request, 'Your password was successfully updated!')
			username = form.cleaned_data.get('username')
			raw_password = form.cleaned_data.get('password1')
			user = authenticate(username=username, password=raw_password)
			login(request, user)
			return redirect('myprofile')
			
		else:
			messages.error(request, '')

	elif request.method == 'POST' and 'submit_photo' in request.POST:
		photo = request.FILES['photo']
		user = request.user.id
		edit_user_profile = User_profile.objects.get(username=user)
		edit_user_profile.photo = photo
		edit_user_profile.save()
			

		
		#photo = request.POST.get('file')
		#user = request.user.id
		#edit_user = User_profile.objects.get(pk=user)
		#edit_user.photo = photo
		#edit_user.save()
		
		return redirect ('myprofileedit')
			



	return render(request, "myprofileedit.html" ,{'cat_nav':category, 'profile':profile,'form': form,'form2': form2,'count':count})


