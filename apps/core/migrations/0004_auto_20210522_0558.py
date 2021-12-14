# Generated by Django 3.2.3 on 2021-05-22 05:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_saascontact_saascustomer'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saasinstance',
            name='identifier',
            field=models.CharField(max_length=16, unique=True, verbose_name='identifier'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='name',
            field=models.CharField(max_length=16, unique=True, verbose_name='name'),
        ),
    ]