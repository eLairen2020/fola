from django.contrib import admin

from django.db import models
from .models import Category, Company, ItemCategory, Items, Design, Photoslider, Offersection, Services


class ItemsAdmin(admin.ModelAdmin):
    list_display = ['item_name', 'company', 'item_category','price','stock']
    list_filter = ['company','item_category','stock'] 
    search_fields = ['item_name']  
    


admin.site.register(Category)
admin.site.register(Company)
admin.site.register(ItemCategory)
admin.site.register(Items, ItemsAdmin)
admin.site.register(Design)
admin.site.register(Photoslider)
admin.site.register(Offersection)
admin.site.register(Services)




