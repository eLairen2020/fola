from django.db import models
from django.utils import timezone

from django.contrib.auth.models import User 

class User_profile(models.Model):
    
    username = models.OneToOneField(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=100, blank=True, null=True,)
    last_name = models.CharField(max_length=100, blank=True, null=True,)
    phone = models.CharField(max_length=13, blank=True, null=True,)
    address = models.CharField(max_length=200, blank=True, null=True,)
    photo = models.ImageField(upload_to='user_pic', blank=True, null=True,)
    
    class Meta:
        verbose_name_plural = "User_Profile"
    def __str__(self):
        return str(self.username)
