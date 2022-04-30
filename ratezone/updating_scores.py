import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ratezone.settings')
django.setup()
from main.models import *
import mysql.connector
from main.views import convert_to_dictionary

mydb = mysql.connector.connect(database='ratezoneDB',
                               user='ratezone_userAdmin', password='ratezone@123')
cursors = mydb.cursor()
emp = Employee.objects.all()

for element in emp:
    query1 = '''
    UPDATE Employee E set E.overall_rating = ( SELECT ( SUM(U.overall_rating) / COUNT(U.review) ) AS 'total' 
    FROM user_faculty_rev AS U WHERE U.employee_id=%s GROUP BY 'total') WHERE E.employee=%s
    '''

    query2 = '''
    UPDATE Employee E set E.teaching_quality = ( SELECT (SUM(U.teaching_quality) / COUNT(U.review)) AS 'total' 
    FROM user_faculty_rev AS U WHERE U.employee_id=%s GROUP BY 'total') WHERE E.employee=%s
    '''

    query3 = '''
    UPDATE Employee E set E.exams_difficulty = ( SELECT (SUM(U.difficulty_rating) / COUNT(U.review)) AS 'total' 
    FROM user_faculty_rev AS U WHERE U.employee_id=%s GROUP BY 'total') WHERE E.employee=%s
    '''

    data = (element.employee, element.employee)
    try:
        cursors.execute(query1, data)
        cursors.execute(query2, data)
        cursors.execute(query3, data)
        print(f'Updated scores for {element.fname}, {element.lname}: {element.employee}')
    except:
        print(f'Failed to update the scores for {element.fname}, {element.lname}: {element.employee}')
