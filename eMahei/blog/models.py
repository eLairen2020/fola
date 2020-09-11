from django.db import models
from django.contrib.auth.models import User

from django.contrib.contenttypes.fields import GenericRelation
from taggit.managers import TaggableManager
# Create your models here.


class Blog_category(models.Model):
    title = models.CharField(max_length=100)
    updated_by = models.ForeignKey(User, on_delete=models.CASCADE)
    class Meta:
        verbose_name_plural = "Blog Category"
    def __str__(self):
        return self.title

class Blog(models.Model):
    title = models.CharField(max_length=100)
    tags = TaggableManager()
    author = models.CharField(max_length=100)
    author_picture = models.FileField(upload_to='author_pic/', null=True)
    about_designation = models.CharField(max_length=100)
    about_author = models.TextField()
    category = models.ForeignKey(Blog_category, blank=True, null=True, on_delete=models.CASCADE)
    blog_image = models.FileField(upload_to='blog_pic/', null=True)
    article = models.TextField()
    date_of_publish = models.DateTimeField(auto_now=True)
    updated_by = models.ForeignKey(User, on_delete=models.CASCADE)
    
    class Meta:
        verbose_name_plural = "Blog"
    def __str__(self):
        return str(self.title)


class Comment(models.Model):
    post = models.ForeignKey(Blog,on_delete=models.CASCADE,related_name='comments')
    name = models.ForeignKey(User,on_delete=models.CASCADE,related_name='users')
    body = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=False)
    

    class Meta:
        ordering = ['created_on']

    def __str__(self):
        return 'Comment {} by {}'.format(self.name,self.body)





class subcomment(models.Model):
    main_comment = models.ForeignKey(Comment, blank=True, null=True, on_delete=models.CASCADE)
    name = models.ForeignKey(User,on_delete=models.CASCADE,related_name='users_subcommented')
    body = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['created_on']

    def __str__(self):
        return 'Comment {} by {}'.format(self.body, self.name)



class BlogComment(models.Model):
    sno = models.AutoField(primary_key = True)
    comment = models.TextField()
    user = models.ForeignKey(User, on_delete = models.CASCADE)
    blog = models.ForeignKey(Blog, on_delete = models.CASCADE)
    parent = models.ForeignKey('self', on_delete = models.CASCADE, null =True, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return 'Comment {} by {}'.format(self.comment, self.user)







