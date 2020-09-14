
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
from company.models import Category, Company, Design
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
	category = Category.objects.all()
	
	
	
	if request.method == 'POST' and 'submitAddbussiness' in request.POST:

		User= request.user
		cat = request.POST.get('category')
		category = Category.objects.get(name=cat)
		name_of_company = request.POST.get('name_of_company')
		des_of_company = request.POST.get('des_of_company')
		slug = request.POST.get('slug')
		owner_image = request.FILES['owner_image']
		owner_of_the_company = request.POST.get('owner_of_the_company')
		about_owner = request.POST.get('about_owner')
		address = request.POST.get('address')
		address1 = request.POST.get('address1')
		company_email = request.POST.get('company_email')
		company_phone = request.POST.get('company_phone')
		opentiming = request.POST.get('opentiming')
		add_photoslider = request.POST.get('add_photoslider')
		add_offer_section = request.POST.get('add_offer_section')
		add_pricingtable = request.POST.get('add_pricingtable')
		add_services = request.POST.get('add_services')
		add_menulist = request.POST.get('add_menulist')

		add_bussiness = Company()

		add_bussiness.User = User
		add_bussiness.category = category
		add_bussiness.name_of_company = name_of_company
		add_bussiness.des_of_company = des_of_company
		add_bussiness.slug = slug
		add_bussiness.owner_image = owner_image
		add_bussiness.owner_of_the_company = owner_of_the_company
		add_bussiness.about_owner = about_owner
		add_bussiness.address = address
		add_bussiness.address1 = address1
		add_bussiness.company_email = company_email
		add_bussiness.company_phone = company_phone
		add_bussiness.opentiming = opentiming
		add_bussiness.add_photoslider = add_photoslider
		add_bussiness.add_offer_section = add_offer_section
		add_bussiness.add_pricingtable = add_pricingtable
		add_bussiness.add_services = add_services
		add_bussiness.add_menulist = add_menulist
		
		add_bussiness.save()

		add_bussiness.refresh_from_db()
		add_design = Design()
		com = request.POST.get('name_of_company')
		com1 = Company.objects.get(name_of_company=com)
		com2 = com1.name_of_company

		add_design.company = Company.objects.get(name_of_company=com2)
		
		add_design.save()
		return redirect ('myprofile')


	return render(request, "myprofile.html" ,{'profile':profile , 'category':category })


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
