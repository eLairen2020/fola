# Generated by Django 3.1 on 2020-08-26 08:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('company', '0013_company_owner_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='company',
            name='hero_background_image',
        ),
        migrations.RemoveField(
            model_name='company',
            name='hero_image',
        ),
        migrations.RemoveField(
            model_name='company',
            name='logo',
        ),
        migrations.AddField(
            model_name='design',
            name='hero_background_image',
            field=models.ImageField(blank=True, null=True, upload_to='company_image'),
        ),
        migrations.AddField(
            model_name='design',
            name='hero_image',
            field=models.ImageField(blank=True, null=True, upload_to='company_image'),
        ),
        migrations.AddField(
            model_name='design',
            name='logo',
            field=models.ImageField(blank=True, upload_to='company_logo'),
        ),
    ]
