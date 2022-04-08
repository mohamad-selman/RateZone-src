# Generated by Django 4.0.3 on 2022-04-08 09:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_userqueue'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserWatchCourse',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'user_watch_course',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='UserWatchFaculty',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'user_watch_faculty',
                'managed': False,
            },
        ),
    ]
