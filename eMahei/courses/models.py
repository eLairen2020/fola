from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


# Create your models here.

class Categories(models.Model):
    name = models.CharField(max_length=60)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    
    
    class Meta:
        verbose_name_plural = "Categories"
    def __str__(self):
        return self.name

class Instructor(models.Model):
    firstname = models.CharField(max_length=50)
    lastname =  models.CharField(max_length=50)
    email = models.EmailField(max_length=200)
    image = models.ImageField(upload_to='instructor_image')
    brief_introduction = models.TextField()
    qualifications = models.CharField(max_length=100)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    class Meta:
        verbose_name_plural = "Instructor"
    def __str__(self):
        return self.firstname




class Language_name(models.Model):
    name = models.CharField(max_length=30, unique=True)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    class Meta:
        verbose_name_plural = "Language"
    def __str__(self):
        return self.name
    

class Courses(models.Model):
    title = models.CharField(max_length=100)
    subtitle = models.CharField(max_length=50)
    thumnail = models.ImageField(upload_to='course_thumnail')
    category = models.ForeignKey(Categories, blank=True, null=True, on_delete=models.CASCADE)
    instructor = models.ForeignKey(Instructor, blank=True, null=True, on_delete=models.CASCADE)
    language_name = models.ForeignKey(Language_name, blank=True, null=True, on_delete=models.CASCADE)
    lastupdate = models.DateTimeField(auto_now=True)
    price = models.IntegerField()
    offer = models.BooleanField(default=False)
    offerprice = models.IntegerField(blank=True, null=True)
    picture = models.ImageField(upload_to='course_pic')
    durations = models.CharField(max_length=10)
    What_you_will_learn = models.TextField()
    requirments = models.TextField()
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    

    
    
    
    class Meta:
        verbose_name_plural = "Course"
    def __str__(self):
        return str(self.title)




class Ebooks(models.Model):
    name = models.CharField(max_length=100)
    link = models.CharField(max_length=200)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.name


class Chapter(models.Model):
    name = models.CharField(max_length=100)
    chapter_no = models.IntegerField()
    course_name = models.ForeignKey(Courses, blank=True, null=True, on_delete=models.CASCADE)
    details = models.CharField(max_length=500)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    

    class Meta:
        ordering = ('chapter_no',)

    def __str__(self):
        return self.name


class Topics(models.Model):
    
    chapter = models.ForeignKey(Chapter, blank=True, null=True, on_delete=models.CASCADE)
    topic_no = models.IntegerField()
    name = models.CharField(max_length=100)
    details = models.TextField()
    videolink = models.CharField(max_length=200)
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    class Meta:
        ordering = ('topic_no',)
    def __str__(self):
        return self.name

class Course_enroll_details(models.Model):
    student_name = models.ForeignKey(User, blank=True, null=True, on_delete=models.CASCADE)
    course_name = models.ForeignKey(Courses, blank=True, related_name='course', null=True, on_delete=models.CASCADE)
    date_of_purchase = models.DateTimeField(auto_now=True)
    payment_details = models.CharField(max_length=100, blank=True, null=True,)
    
    
    def __str__(self):
        return str(self.course_name)

class FAQ(models.Model):
    course_name = models.ForeignKey(Courses, blank=True, null=True, on_delete=models.CASCADE)
    chapter_name = models.ForeignKey(Chapter, blank=True, null=True, on_delete=models.CASCADE)
    FAQ = models.TextField()
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    def __str__(self):
        return str(self.course_name)

class QuestionBank(models.Model):
    course_name = models.ForeignKey(Courses, blank=True, null=True, on_delete=models.CASCADE)
    chapter_name = models.ForeignKey(Chapter, blank=True, null=True, on_delete=models.CASCADE)
    questionbank = models.TextField()
    updated_by = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
    
    def __str__(self):
        return str(self.course_name)

class Enotes(models.Model):
    course_name = models.ForeignKey(Courses, blank=True, null=True, on_delete=models.CASCADE)
    chapter_name = models.ForeignKey(Chapter, blank=True, null=True, on_delete=models.CASCADE)
    enotes = models.TextField()
    updated_by = models.ForeignKey(User, blank=True, null=True, on_delete=models.CASCADE)
    
    class Meta:
        ordering = ('chapter_name',)
    def __str__(self):
        return str(self.course_name)
        
         
























