# Generated by Django 4.0.4 on 2022-05-27 20:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_alter_employee_exams_difficulty_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='department',
            name='activities',
            field=models.FloatField(blank=True, null=True),
        ),
    ]
