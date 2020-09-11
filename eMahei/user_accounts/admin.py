from django.contrib import admin
# Register your models here.
from django.db import models
from .models import User_profile

admin.site.register(User_profile)