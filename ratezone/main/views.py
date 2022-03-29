import numpy as np
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import Normalizer
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db import connections
from .models import *

from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .decorators import *
cursors = connections['default'].cursor()

# Create your views here.
def home(request):
    return render(request, './index.html')


def searchResults(request):
    total_count = 0

    prof_query = "SELECT fname, lname, dept_name, ROUND(F.overall_rating, 2) AS 'overall_rating', F.teaching_quality, F.faculty_id FROM Faculty AS F INNER JOIN Professor AS P ON F.faculty_id = P.faculty_id INNER JOIN Department AS D ON D.dept_code=F.dept_code"

    cursors.execute(prof_query)
    prof_row = cursors.fetchall()
    tmp = cursors.description
    prof = []
    for r in prof_row:
        total_count += 1
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        prof.append(d)

    # for p in prof:
    #     print(p)

    ta_query = "SELECT F.faculty_id, fname, lname, dept_name FROM Faculty as F INNER JOIN Teaching_Assistant as T ON F.faculty_id = T.faculty_id INNER JOIN Department AS D ON D.dept_code=F.dept_code"
    cursors.execute(ta_query)
    ta_row = cursors.fetchall()
    tmp = cursors.description
    ta = []

    for r in ta_row:
        total_count += 1
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        ta.append(d)

    # for t in ta:
    #     print(t)

    # CS query

    CS_dept_query = "SELECT F.faculty_id, F.fname, F.lname, ROUND(F.overall_rating,2), dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=418"
    cursors.execute(CS_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    CS_dept = []

    for dep in dept_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = dep[i]
            i += 1
        CS_dept.append(d)

    # CE query

    CE_dept_query = "SELECT F.faculty_id, fname, lname,ROUND(F.overall_rating,2), dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=1612"
    cursors.execute(CE_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    CE_dept = []

    for dep in dept_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = dep[i]
            i += 1
        CE_dept.append(d)

    # IS query

    IS_dept_query = "SELECT F.faculty_id, fname, lname, ROUND(F.overall_rating, 2), dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=1830"
    cursors.execute(IS_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    IS_dept = []

    for dep in dept_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = dep[i]
            i += 1
        IS_dept.append(d)

    Math_dept_query = "SELECT F.faculty_id, fname, lname, ROUND(F.overall_rating, 2),dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=410"
    cursors.execute(Math_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    MATH_dept = []

    for dep in dept_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = dep[i]
            i += 1
        MATH_dept.append(d)



    # courses = Course.objects.all()

    course_query = "SELECT * FROM Course AS C INNER JOIN Department AS D ON C.course_code LIKE CONCAT('%', D.dept_code, '%')"
    cursors.execute(course_query)
    course_row = cursors.fetchall()
    tmp = cursors.description
    courses = []

    for element in course_row:
        i = 0
        c = {}
        while i < len(tmp):
            c[tmp[i][0]] = element[i]
            i += 1
        courses.append(c)

    # print(courses)



    tmp1 = Department.objects.all().count()
    tmp2 = Course.objects.all().count()
    total_count += tmp1 + tmp2


    print(prof)

    result = {
        'professors': prof,
        'TAs': ta,
        'CS_dept': CS_dept,
        'CE_dept': CE_dept,
        'IS_dept': IS_dept,
        'MATH_dept': MATH_dept,
        'courses': courses,
        'count': total_count
    }
    return render(request, './searchResults.html', result)


def professor(request, prof_id):
    # print(prof_id)
    prof_query = "SELECT F.fname, F.lname, ROUND(F.overall_rating,2) AS 'overall_rating',F.teaching_quality,F.faculty_id,D.dept_name,P.image FROM Faculty AS F INNER JOIN Professor AS P ON F.faculty_id=P.faculty_id INNER JOIN Department AS D ON F.dept_code=D.dept_code WHERE P.faculty_id = %s"
    cursors.execute(prof_query, [prof_id])
    prof_row = cursors.fetchall()
    tmp = cursors.description
    prof = []
    for r in prof_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        prof.append(d)

    # print(prof)

    second_faculty_rev_query = "SELECT COUNT(R.review_id) AS 'rev_count' FROM Faculty AS F INNER JOIN user_faculty_rev AS R ON F.faculty_id=R.faculty_id WHERE F.faculty_id=%s"
    cursors.execute(second_faculty_rev_query, [prof_id])
    prof_row = cursors.fetchall()
    tmp = cursors.description
    rev_prof = []
    for r in prof_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        rev_prof.append(d)

    prof[0].update(rev_prof[0])

    similar_query = "SELECT F.fname,F.lname, F2.fname,F2.lname, ROUND(F2.overall_rating, 2) AS 'overall_rating' from Faculty F inner join similar_faculty S1 on S1.fid=F.faculty_id inner join Faculty F2 on S1.similar_faculty=F2.faculty_id WHERE F.faculty_id=%s"
    cursors.execute(similar_query, [prof_id])
    sim_row = cursors.fetchall()
    tmp = cursors.description
    sim_prof = []
    for r in sim_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        sim_prof.append(d)



    result = {
        'prof': prof,
        'similar_professors': sim_prof
    }
    return render(request, './professor.html', result)

@login_required(login_url='sign_in')
def rate(request):
    return render(request, './rate.html')

def search(request):
    return render(request, './search.html')

@login_required(login_url='sign_in')
def queue(request, prof_id):
    # we need professor id and user id
    # print(prof_id)
    faculty_id = prof_id
    uname = request.user.username
    # print(uname)
    user = User.objects.get(username=uname)
    user_id = user.id
    try:
        print('Before inserting')
        # query_entry = UserQueue(uid=user_id, fid=faculty_id)
        query = 'INSERT INTO user_queue VALUES (%s, %s)'
        data = (user_id, faculty_id)
        cursors.execute(query, data)
        print('Made it here')
        # query_entry.save()
        print('Confirmed entry')
    except:
        print('Error occured')
        # return render(request, './error.html')

    fetch = "SELECT F.fname, F.lname, F.faculty_id, P.image, P.prof_rank, ROUND(F.overall_rating, 2) AS 'overall_rating' FROM Faculty AS F INNER JOIN user_queue AS U ON F.faculty_id=U.fid INNER JOIN Professor AS P ON P.faculty_id=F.faculty_id WHERE U.uid=%s"
    cursors.execute(fetch, [user_id])
    prof_row = cursors.fetchall()
    tmp = cursors.description
    prof = []
    for r in prof_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        prof.append(d)

    result = {
        'professors': prof
    }
    return render(request, './queue.html', result)

@unauthenticated_user
def sign_in(request):

    if request.method == 'POST':
        username = request.POST['username']
        passw = request.POST['password']

        print(f'user email is {username} and the password is {passw}')
        user = authenticate(request, username=username, password=passw)

        if user is not None:
            print('HEy HO')
            login(request, user)
            print('Yo YO')
            return redirect('dashboard')
        else:
            return render(request, './signin.html')
    return render(request, './signin.html')

@unauthenticated_user
def sign_up(request):

    if request.method == 'POST':
        fname = request.POST['name']
        username = request.POST['username']
        user_email = request.POST['email']
        passw = request.POST['password']



        print(f'Record: {fname}, {username}, {user_email}, {passw}')

        try:
            User.objects.create_user(password=passw, username=username, first_name=fname, email=user_email)
            print('HI')
            print('Got here')
            return redirect('sign_in')
        except:
            return render(request, './error.html')
    return render(request, './signup.html')


def logoutUser(request):
    logout(request)
    return redirect('home')

def course(request):
    return render(request, './course.html')

@login_required(login_url='sign_in')
def rate_course(request):
    return render(request, './rateCourse.html')

@login_required(login_url='sign_in')
def dashboard(request):
    return render(request, './dashboard.html')
