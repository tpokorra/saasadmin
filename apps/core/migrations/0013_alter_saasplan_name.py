# Generated by Django 3.2.9 on 2021-11-30 13:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0012_auto_20211127_1537'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saasplan',
            name='name',
            field=models.CharField(max_length=16, verbose_name='name'),
        ),
    ]