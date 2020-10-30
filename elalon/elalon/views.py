from django.shortcuts import render, redirect, get_object_or_404
from company.models import Company, Category, Items, Design, ItemCategory
from django.http import HttpResponse
import os




def elalon(request):

    heroimg1 = Items.objects.order_by('?')
    heroimg2 = Items.objects.order_by('?')
    heroimg3 = Items.objects.order_by('?')

    return render(request,"index.html", { 'heroimg1':heroimg1,'heroimg2':heroimg2,'heroimg3':heroimg3 })

def template(request,slug):
    
    isinstance = get_object_or_404(Company,slug=slug)
    cat = isinstance.category.name
    id = isinstance.id
    company = Company.objects.get(slug=slug)
    design = Design.objects.get(company=id)
    if cat =='Clothes':
        
        return render(request,"clothes_home.html",{'company':company, 'design': design})

    elif cat == 'Foods':
        return render(request,"template2.html",{'company':company, 'design': design})

    return render(request,"index.html")




def cpanel(request,slug):
    user_ = request.user
    isinstance = get_object_or_404(Company,slug=slug)
    if user_ != isinstance.User:
        return HttpResponse("<h1> Not Found Pliz go Back </h1>")
    else:

        cat = isinstance.category.name
        id = isinstance.id
        company = Company.objects.get(slug=slug)
        design = Design.objects.get(company=id)
        
        

    
        hero_image = design.hero_image
        logo = design.logo
        bg_color = design.bg_color
        welcome_color = design.welcome_color
        header_color = design.header_color
        header_font = design.header_font
        sub_header_font = design.sub_header_font
        sub_header_color = design.sub_header_color
        button_color = design.button_color
        p_color = design.p_color
        p_font = design.p_font
        hover_color = design.hover_color
        bg_image = design.hero_background_image
    
        if request.method == 'POST' and 'submitbg' in request.POST:
            
            bg_color1 = request.POST.get('bg_color')
            
            bgimage1 = request.FILES['bg'] 
            hero1 = request.FILES['hero']
            if hero_image != None:
                edit_background = Design.objects.get(company=id)
                
                edit_background.hero_image.delete(False)
                edit_background.hero_image = hero1
                edit_background.logo = logo
                edit_background.bg_color = bg_color1
                edit_background.hero_background_image = hero_image
                edit_background.welcome_color = welcome_color
                edit_background.header_color = header_color
                edit_background.header_font = header_font
                edit_background.sub_header_font = sub_header_font
                edit_background.sub_header_color = sub_header_color
                edit_background.button_color = button_color
                edit_background.p_color = p_color
                edit_background.p_font = p_font
                edit_background.hover_color = hover_color
                edit_background.save()
            elif hero != None:
                edit_background = Design.objects.get(company=id)
                edit_background.hero_background_image.delete(False)
                
                edit_background.hero_image = hero
                edit_background.logo = logo
                edit_background.bg_color = bg_color1
                edit_background.hero_background_image = bgimage1
                edit_background.welcome_color = welcome_color
                edit_background.header_color = header_color
                edit_background.header_font = header_font
                edit_background.sub_header_font = sub_header_font
                edit_background.sub_header_color = sub_header_color
                edit_background.button_color = button_color
                edit_background.p_color = p_color
                edit_background.p_font = p_font
                edit_background.hover_color = hover_color
                edit_background.save()

            elif hero != None and hero_image != None:
                edit_background = Design.objects.get(company=id)

                edit_background.hero_background_image.delete(False)
                edit_background.hero_image.delete(False)
                edit_background.hero_background_image = bgimage1
                edit_background.hero_image = hero1
                edit_background.logo = logo
                edit_background.bg_color = bg_color1
                edit_background.welcome_color = welcome_color
                edit_background.header_color = header_color
                edit_background.header_font = header_font
                edit_background.sub_header_font = sub_header_font
                edit_background.sub_header_color = sub_header_color
                edit_background.button_color = button_color
                edit_background.p_color = p_color
                edit_background.p_font = p_font
                edit_background.hover_color = hover_color
                edit_background.save()

            else:
                edit_background = Design.objects.get(company=id)
                edit_background.hero_background_image.delete(False)
                edit_background.hero_image.delete(False)
                edit_background.hero_image = hero
                edit_background.logo = logo
                edit_background.bg_color = bg_color1
                edit_background.hero_background_image = bgimage
                edit_background.welcome_color = welcome_color
                edit_background.header_color = header_color
                edit_background.header_font = header_font
                edit_background.sub_header_font = sub_header_font
                edit_background.sub_header_color = sub_header_color
                edit_background.button_color = button_color
                edit_background.p_color = p_color
                edit_background.p_font = p_font
                edit_background.hover_color = hover_color
                edit_background.save()


                if cat =='Clothes':
                    return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
                else:
                    return render(request,"template2_dev.html",{'company':company, 'design': design})
                
        elif request.method == 'POST' and 'submitfont' in request.POST :
            
            welcome_color = request.POST.get('welcome_color')
            header_color = request.POST.get('header_color')
            header_font = request.POST.get('header_font')
            sub_header_font = request.POST.get('sub_header_font')
            sub_header_color = request.POST.get('sub_header_color')
            button_color = request.POST.get('button_color')
            p_color = request.POST.get('p_color')
            p_font = request.POST.get('p_font')
            hover_color = request.POST.get('hover_color')

            edit_background = Design.objects.get(company=id)
            edit_background.hero_background_image = bg_image
            edit_background.hero_image = hero_image
            edit_background.logo = logo
            edit_background.bg_color = bg_color
            edit_background.welcome_color = welcome_color
            edit_background.header_color = header_color
            edit_background.header_font = header_font
            edit_background.sub_header_font = sub_header_font
            edit_background.sub_header_color = sub_header_color
            edit_background.button_color = button_color
            edit_background.p_color = p_color
            edit_background.p_font = p_font
            edit_background.hover_color = hover_color
            edit_background.save()
            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})
        elif request.method == 'POST' and 'submititemcat' in request.POST :
            
            name = request.POST.get('name')
            sub_title = request.POST.get('sub_title')
            

            add_category = ItemCategory()
            add_category.name = name
            add_category.sub_title = sub_title
            add_category.company = company
            add_category.save()
            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})

            
        elif request.method == 'POST' and 'submititem' in request.POST :
            
            name = request.POST.get('item_name')
            des = request.POST.get('description')
            item_cat = request.POST.get('item_category')
            item_category = ItemCategory.objects.get(name=item_cat) 
            price = request.POST.get('price')
            tag = request.POST.get('tag')
            stock = request.POST.get('stock')
            image = request.FILES['image']
            

            add_items = Items()

            add_items.company = company
            add_items.item_name = name
            add_items.description = des
            add_items.item_category = item_category
            add_items.price = price
            add_items.tag = tag
            add_items.stock = stock
            add_items.image = image
            
            add_items.save()
            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})

        elif request.method == 'POST' and 'edititem' in request.POST :
            
            name = request.POST.get('item_name')
            des = request.POST.get('description')
            item_cat = request.POST.get('item_category')
            item_category = ItemCategory.objects.get(name=item_cat) 
            price = request.POST.get('price')
            tag = request.POST.get('tag')
            stock = request.POST.get('stock')
            image = request.FILES['image']
            id = request.POST.get('id')
            

            edit_items = Items.objects.get(id=id)
            edit_items.company = company
            edit_items.item_name = name
            edit_items.description = des
            edit_items.item_category = item_category
            edit_items.price = price
            edit_items.tag = tag
            edit_items.stock = stock
            edit_items.image.delete(False)
            edit_items.image = image
            edit_items.save()
            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})
            
        elif request.method == 'POST' and 'submitsubtemplates' in request.POST:
            User = request.user
            category = company.category
            name_of_company = company.name_of_company
            des_of_company = Company.des_of_company
            slug = company.slug
            owner_image = company.owner_image
            owner_of_the_company = company.owner_of_the_company
            about_owner = company.about_owner
            address = company.address
            address1 = company.address1
            company_email = company.company_email
            company_phone = company.company_phone
            opentiming = company.opentiming
            add_photoslider = request.POST.get('add_photoslider')
            add_offer_section = request.POST.get('add_offer_section')
            add_pricingtable = request.POST.get('add_pricingtable')
            add_services = request.POST.get('add_services')
            add_menulist = request.POST.get('add_menulist')

            edit_bussiness = Company.objects.get(name_of_company=name_of_company)

            edit_bussiness.User = User
            edit_bussiness.category = category
            edit_bussiness.name_of_company = name_of_company
            edit_bussiness.des_of_company = des_of_company
            edit_bussiness.slug = slug
            edit_bussiness.owner_image = owner_image
            edit_bussiness.owner_of_the_company = owner_of_the_company
            edit_bussiness.about_owner = about_owner
            edit_bussiness.address = address
            edit_bussiness.address1 = address1
            edit_bussiness.company_email = company_email
            edit_bussiness.company_phone = company_phone
            edit_bussiness.opentiming = opentiming
            edit_bussiness.add_photoslider = add_photoslider
            edit_bussiness.add_offer_section = add_offer_section
            edit_bussiness.add_pricingtable = add_pricingtable
            edit_bussiness.add_services = add_services
            edit_bussiness.add_menulist = add_menulist
            
            edit_bussiness.save()
            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})


        elif request.method== "POST" and 'deleteitem' in request.POST :

            id = request.POST.get('id')
            Items.objects.filter(id=id).delete()

            if cat =='Clothes':
                return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
            else:
                return render(request,"template2_dev.html",{'company':company, 'design': design})
        
        

        if cat =='Clothes':
            return render(request,"clothes_home_dev.html",{'company':company, 'design': design})
        else:
            return render(request,"template2_dev.html",{'company':company, 'design': design})





    
        

    

    
        


