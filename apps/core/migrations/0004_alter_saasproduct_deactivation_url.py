# Generated by Django 4.0 on 2022-03-30 07:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_saasproduct_instance_admin_user_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saasproduct',
            name='deactivation_url',
            field=models.CharField(default='https://%prefix%identifier.example.org/deactivate', max_length=250, verbose_name='Deactivation URL'),
        ),
    ]