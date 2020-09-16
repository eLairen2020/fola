from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.elalon, name='elalon'),
    path('accounts/', include('user_account.urls')),
    path('<slug>', views.template, name='template'),
    path('<slug>/cpanel', views.cpanel, name='cpanel'),
    
    
    

]
urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
