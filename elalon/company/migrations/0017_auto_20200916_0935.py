# Generated by Django 3.0.5 on 2020-09-16 09:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('company', '0016_auto_20200827_2030'),
    ]

    operations = [
        migrations.AlterField(
            model_name='company',
            name='slug',
            field=models.SlugField(default=True, max_length=200, unique='True'),
            preserve_default=False,
        ),
    ]
