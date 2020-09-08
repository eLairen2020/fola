
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect, get_object_or_404
from django import forms
from django.contrib.auth.models import User, auth
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from .forms import SignUpForm
from django.http import HttpResponse

from django.contrib import messages 

from .models import User_profile
# Create your views here.

def signin(request):
	if request.method == 'POST':
		username = request.POST.get('username')
		password = request.POST.get('password')

		user = authenticate(request, username=username, password=password)

		if user is not None:
			login(request, user)
			messages.info(request, 'Login Sucessfully!')
			
			return redirect('elalon')
		else:
			messages.info(request, 'Username OR password is incorrect')

	return render(request, 'signin.html')

def register_user(request):
	form = SignUpForm(request.POST)
	if request.method == 'POST':
		form = SignUpForm(request.POST)
		if form.is_valid():
			user = form.save()
			
			user.refresh_from_db()
			user_profile = User_profile()
			user_profile.first_name = 'Fill In the Info'
			user_profile.username = user
			user_profile.save()


			username = form.cleaned_data.get('username')
			raw_password = form.cleaned_data.get('password1')
			user = authenticate(username=username, password=raw_password)
			login(request, user)
			messages.info(request, 'Login Successfully')
			return redirect('/')
		

	
	return render(request, 'register.html', {'form':form})

def logoutUser(request):
	logout(request)
	messages.info(request, 'Logout Sucessfully!')
	
	return redirect('/')


def myprofile(request):
	
	user_= request.user
	profile = User_profile.objects.filter(username=user_)


	return render(request, "myprofile.html" ,{'profile':profile })


def myprofileedit(request):
	
	
	
	user_= request.user
	profile = User_profile.objects.filter(username=user_)
	count = User_profile.objects.filter(username=user_).count
	form = PasswordChangeForm(request.user)
	

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
			

		
		
		return redirect ('myprofileedit')
			



	return render(request, "myprofiledit.html" ,{ 'profile':profile,'form': form,'count':count})
