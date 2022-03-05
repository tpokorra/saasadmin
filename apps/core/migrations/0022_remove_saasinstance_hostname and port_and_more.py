# Generated by Django 4.0 on 2022-03-04 21:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0021_saasinstance_channel'),
    ]

    operations = [
        migrations.RemoveConstraint(
            model_name='saasinstance',
            name='hostname and port',
        ),
        migrations.RemoveField(
            model_name='saasinstance',
            name='port',
        ),
        migrations.AddField(
            model_name='saasinstance',
            name='first_port',
            field=models.IntegerField(default=-1, verbose_name='first port'),
        ),
        migrations.AddField(
            model_name='saasinstance',
            name='last_port',
            field=models.IntegerField(default=-1, verbose_name='last port'),
        ),
        migrations.AddField(
            model_name='saasproduct',
            name='instance_prefix',
            field=models.CharField(default='xy', max_length=10, verbose_name='instance prefix'),
        ),
        migrations.AddField(
            model_name='saasproduct',
            name='number_of_ports',
            field=models.IntegerField(default=1, verbose_name='number of ports'),
        ),
    ]