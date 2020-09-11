from tinymce.widgets import TinyMCE
from django.contrib import admin
from django.db import models


#Register your models here.
from .models import Blog, Blog_category, Comment, subcomment, BlogComment

class BlogAdmin(admin.ModelAdmin):
    formfield_overrides = {
        models.TextField: {'widget': TinyMCE()},
        }

admin.site.register(Blog, BlogAdmin)
admin.site.register(Blog_category)



admin.site.register(subcomment)
admin.site.register(BlogComment)

