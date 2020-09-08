from django.contrib.auth.models import Group
from django.contrib import admin

from django.contrib.sessions.models import Session

admin.site.site_header = "eLalonetic Admin"
admin.site.site_title = "eLalonetic Admin Dashboard"
admin.site.index_title = "eLalonetic Admin Dashboard"



class MyAdmin(admin.ModelAdmin):
    menu_title = "Users"
    menu_group = "Staff"




admin.site.register(Session)
