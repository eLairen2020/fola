from django.db import models

# Create your models here.
from django.contrib.auth.models import User 

class Category(models.Model):
    name = models.CharField(max_length=50)
    sub_title = models.CharField(max_length=200)

    class Meta:
        verbose_name_plural = "Category"
    def __str__(self):
        return str(self.name)



class Company(models.Model):
    User = models.ForeignKey(User, on_delete=models.CASCADE)
    
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    name_of_company = models.CharField(max_length=200)
    des_of_company = models.CharField(max_length=300, blank = True)

    slug = models.SlugField(max_length = 200, null = True, blank = True) 
    owner_image = models.ImageField(upload_to='company_owner_image', blank=True)
    owner_of_the_company = models.CharField(max_length=100)

    about_owner = models.CharField(max_length=500, null=True, blank=True)
    address = models.CharField(max_length=200)
    address1 = models.CharField(max_length=200, null=True, blank=True)
    company_email = models.CharField(max_length=40, null=True, blank=True)
    company_phone = models.CharField(max_length=13)
    opentiming = models.CharField(max_length=100, null=True, blank=True)
    add_photoslider = models.BooleanField(default=False)
    add_offer_section = models.BooleanField(default=False)
    add_pricingtable = models.BooleanField(default=False)
    add_services = models.BooleanField(default=False)
    add_menulist = models.BooleanField(default=False)

    class Meta:
        verbose_name_plural = "Company"
    def __str__(self):
        return str(self.name_of_company)

class Photoslider(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='slider_image', blank=True, null=True,)

    class Meta:
        verbose_name_plural = "Photoslider"
    def __str__(self):
        return str(self.company)

class Offersection(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='offer_image', blank=True, null=True )
    offer = models.BooleanField(default=False)
    item_name = models.CharField(max_length=100 )
    description = models.CharField(max_length=100, blank=True)
    price = models.CharField(max_length=100, blank=True)
    offerprice = models.CharField(max_length=100, blank=True)

    class Meta:
        verbose_name_plural = "Offersection"
    def __str__(self):
        return str(self.item_name)

class Services(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    icon = models.CharField(max_length=100)
    title = models.CharField(max_length=100)
    subtitle = models.CharField(max_length=100)

    class Meta:
        verbose_name_plural = "Services"
    def __str__(self):
        return str(self.title)

class ItemCategory(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    sub_title = models.CharField(max_length=200)

    class Meta:
        verbose_name_plural = "Item Category"
    def __str__(self):
        return str(self.name)

class Items(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    item_name =  models.CharField(max_length=100)
    description = models.CharField(max_length=100, null=True, blank=True)
    item_category = models.ForeignKey(ItemCategory, on_delete=models.CASCADE)
    price = models.CharField(max_length=100, blank=True)
    tag =  models.CharField(max_length=100, null=True, blank=True)
    stock = models.BooleanField()
    image = models.ImageField(upload_to='item_image', blank=True, null=True,)
    class Meta:
        verbose_name_plural = "Items"
    def __str__(self):
        return str(self.item_name)

class Design(models.Model):
    company = models.OneToOneField(Company, on_delete=models.CASCADE)
    hero_background_image = models.ImageField(upload_to='company_image', null=True, blank=True)
    hero_image = models.ImageField(upload_to='company_image', null=True, blank=True)
    logo = models.ImageField(upload_to='company_logo', blank=True)
    bg_color = models.CharField(max_length=100, blank=True, )
    welcome_color = models.CharField(max_length=100, blank=True,)
    header_color = models.CharField(max_length=100, blank=True, )
    header_font = models.CharField(max_length=100, blank=True, )
    sub_header_font= models.CharField(max_length=100, blank=True,)
    sub_header_color= models.CharField(max_length=100, blank=True,)
    button_color = models.CharField(max_length=100, blank=True,)
    p_color = models.CharField(max_length=100, blank=True,)
    p_font = models.CharField(max_length=100, blank=True, )
    hover_color = models.CharField(max_length=100, blank=True,)
    class Meta:
        verbose_name_plural = "Design"
    def __str__(self):
        return str(self.company)



    



    









