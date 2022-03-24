# Generated by Django 4.0 on 2022-03-19 09:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_saasproduct_deactivation_url_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='saasproduct',
            name='instance_admin_user',
            field=models.CharField(default='admin', max_length=100, verbose_name='Instance Admin User'),
        ),
        migrations.AddField(
            model_name='saasproduct',
            name='instance_password_reset_url',
            field=models.CharField(default='https://%prefix%identifier.example.org/reset_password?token=#PasswordResetToken', max_length=250, verbose_name='Password Reset URL'),
        ),
    ]