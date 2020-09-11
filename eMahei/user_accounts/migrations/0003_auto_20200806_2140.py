# Generated by Django 3.0.5 on 2020-08-06 16:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_accounts', '0002_auto_20200806_2132'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='user_profile',
            options={'verbose_name_plural': 'User_Profile'},
        ),
        migrations.AddField(
            model_name='user_profile',
            name='first_name',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='user_profile',
            name='headline',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='user_profile',
            name='language',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='user_profile',
            name='last_name',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='user_profile',
            name='photo',
            field=models.ImageField(default=0, upload_to='user_pic'),
            preserve_default=False,
        ),
    ]