# Generated by Django 4.0.4 on 2022-05-28 15:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_remove_usercourserev_employee'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usercourserev',
            name='course_tag',
        ),
        migrations.CreateModel(
            name='CourseTags',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag', models.CharField(default='', editable=False, max_length=50, null=True)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.course')),
                ('review', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.usercourserev')),
            ],
            options={
                'db_table': 'course_tags',
                'unique_together': {('review', 'course', 'tag')},
            },
        ),
    ]
