# Generated by Django 3.2.5 on 2022-05-10 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_auto_20220505_0104'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='exams_difficulty',
            field=models.FloatField(blank=True, default=0, null=True),
        ),
        migrations.AlterField(
            model_name='employee',
            name='overall_rating',
            field=models.FloatField(blank=True, default=0, null=True),
        ),
        migrations.AlterField(
            model_name='employee',
            name='teaching_quality',
            field=models.FloatField(blank=True, default=0, null=True),
        ),
    ]
