# Generated by Django 3.1 on 2020-08-27 11:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('company', '0014_auto_20200826_1419'),
    ]

    operations = [
        migrations.AddField(
            model_name='company',
            name='add_menulist',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='company',
            name='add_offer_section',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='company',
            name='add_photoslider',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='company',
            name='add_pricelist',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='company',
            name='add_services',
            field=models.BooleanField(default=False),
        ),
    ]
