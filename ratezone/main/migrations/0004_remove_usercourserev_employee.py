# Generated by Django 4.0.4 on 2022-05-28 15:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_department_activities'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usercourserev',
            name='employee',
        ),
    ]
