# Generated by Django 3.1 on 2020-08-17 17:56

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('sub_title', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name_plural': 'Category',
            },
        ),
        migrations.CreateModel(
            name='ItemCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('sub_title', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name_plural': 'Category',
            },
        ),
        migrations.CreateModel(
            name='Items',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('item_name', models.CharField(max_length=100)),
                ('description', models.CharField(blank=True, max_length=100, null=True)),
                ('price', models.CharField(blank=True, max_length=100)),
                ('tag', models.CharField(blank=True, max_length=100, null=True)),
                ('stock', models.BooleanField()),
                ('image', models.ImageField(blank=True, null=True, upload_to='item_image')),
                ('item_category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='company.itemcategory')),
            ],
        ),
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_of_company', models.CharField(max_length=200)),
                ('owner_of_the_company', models.CharField(max_length=100)),
                ('about_owner', models.CharField(blank=True, max_length=500, null=True)),
                ('address', models.CharField(max_length=200)),
                ('company_email', models.CharField(blank=True, max_length=30, null=True)),
                ('company_phone', models.CharField(max_length=13)),
                ('User', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Company',
            },
        ),
    ]
