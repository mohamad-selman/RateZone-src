import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ratezone.settings')
django.setup()
from main.models import *
import mysql.connector
from django.db.models import Avg, Count, Sum

mydb = mysql.connector.connect(database='ratezoneDB',
                               user='ratezone_userAdmin', password='ratezone@123')
cursors = mydb.cursor()


def update_scores():
    emp = Employee.objects.all()

    for element in emp:

        sum_rating = UserFacultyRev.objects.filter(employee_id=element).aggregate(Sum('overall_rating'))
        count = UserFacultyRev.objects.filter(employee_id=element).aggregate(Count('overall_rating'))

        if sum_rating['overall_rating__sum'] is None:
            sum_rating = 0
        else:
            sum_rating = sum_rating['overall_rating__sum']

        if count['overall_rating__count'] is None:
            count = 0
        else:
            count = count['overall_rating__count']
        if count != 0:
            new_overall_rating = int(sum_rating) / int(count)
        else:
            new_overall_rating = 0

        print(f'Sum for {element.fname}, {element.lname} is {sum_rating}')
        print(f'count for {element.fname}, {element.lname} is {count}')
        print(f'new rating for {element.fname}, {element.lname} is {new_overall_rating}')

        sum_teaching_quality = UserFacultyRev.objects.filter(employee_id=element).aggregate(Sum('teaching_quality'))
        count_teaching_quality = UserFacultyRev.objects.filter(employee_id=element).aggregate(Count('teaching_quality'))

        print(f'Sum for {element.fname}, {element.lname} is {sum_teaching_quality}')
        print(f'count for {element.fname}, {element.lname} is {count_teaching_quality}')

        if sum_teaching_quality['teaching_quality__sum'] is None:
            sum_teaching_quality = 0
        else:
            sum_teaching_quality = sum_teaching_quality['teaching_quality__sum']

        if count_teaching_quality['teaching_quality__count'] is None:
            count_teaching_quality = 0
        else:
            count_teaching_quality = count_teaching_quality['teaching_quality__count']
        if count_teaching_quality != 0:
            new_teaching_quality = int(sum_teaching_quality) / int(count_teaching_quality)
        else:
            new_teaching_quality = 0

        sum_exams_difficulty = UserFacultyRev.objects.filter(employee_id=element).aggregate(Sum('difficulty_rating'))
        count_exams_difficulty = UserFacultyRev.objects.filter(employee_id=element).aggregate(
            Count('difficulty_rating'))

        print(f'Sum for {element.fname}, {element.lname} is {sum_exams_difficulty}')
        print(f'count for {element.fname}, {element.lname} is {count_exams_difficulty}')

        if sum_exams_difficulty['difficulty_rating__sum'] is None:
            sum_exams_difficulty = 0
        else:
            sum_exams_difficulty = sum_exams_difficulty['difficulty_rating__sum']

        if count_exams_difficulty['difficulty_rating__count'] is None:
            count_exams_difficulty = 0
        else:
            count_exams_difficulty = count_exams_difficulty['difficulty_rating__count']
        if count_exams_difficulty != 0:
            new_exams_difficulty = int(sum_exams_difficulty) / int(count_exams_difficulty)
        else:
            new_exams_difficulty = 0

        try:
            Employee.objects.filter(employee=element.employee).update(overall_rating=new_overall_rating)
            Employee.objects.filter(employee=element.employee).update(teaching_quality=new_teaching_quality)
            Employee.objects.filter(employee=element.employee).update(exams_difficulty=new_exams_difficulty)
            print(f'Updated scores for {element.fname}, {element.lname}: {element.employee}')
        except:
            print(f'Failed to update the scores for {element.fname}, {element.lname}: {element.employee}')
