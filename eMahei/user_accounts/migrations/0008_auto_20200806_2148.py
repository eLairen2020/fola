# Generated by Django 3.0.5 on 2020-08-06 16:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_accounts', '0007_auto_20200806_2147'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user_profile',
            old_name='headline',
            new_name='occupation',
        ),
    ]