# Generated by Django 4.0 on 2022-03-01 20:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0017_saasproduct_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saasinstance',
            name='identifier',
            field=models.CharField(max_length=16, verbose_name='identifier'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='costPerPeriod',
            field=models.DecimalField(decimal_places=2, max_digits=10, verbose_name='Cost per Period'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_1',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description 1'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_2',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description 2'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_3',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description 3'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_4',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description 4'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_caption',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description Caption'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='descr_target',
            field=models.CharField(default='TODO', max_length=200, verbose_name='Description Target'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='language',
            field=models.CharField(default='DE', max_length=10, verbose_name='Language'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='noticePeriodTypeInDays',
            field=models.IntegerField(verbose_name='Notice Period in Days'),
        ),
        migrations.AlterField(
            model_name='saasplan',
            name='periodLengthInMonths',
            field=models.IntegerField(verbose_name='Period Length in Months'),
        ),
        migrations.AddConstraint(
            model_name='saasinstance',
            constraint=models.UniqueConstraint(fields=('hostname', 'port'), name='hostname and port'),
        ),
        migrations.AddConstraint(
            model_name='saasinstance',
            constraint=models.UniqueConstraint(fields=('identifier', 'product'), name='identifier and product'),
        ),
    ]