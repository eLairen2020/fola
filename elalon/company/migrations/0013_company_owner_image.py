# Generated by Django 3.1 on 2020-08-25 16:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('company', '0012_company_des_of_company'),
    ]

    operations = [
        migrations.AddField(
            model_name='company',
            name='owner_image',
            field=models.ImageField(blank=True, upload_to='company_owner_image'),
        ),
    ]
