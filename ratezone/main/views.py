from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Course, Department, Faculty, Professor, TeachingAssistant, AuthUser
from .models import DeptGeneralcomments, FacultyCourse, FacultyMiscellaneous, FacultyPersonality, FacultyWorkload
from .models import SimilarCourses, SimilarFaculty, UserCourseRev, UserDept, UserFacultyRev
from django.db import connections
from django.contrib.auth import logout, login
cursors = connections['default'].cursor()

# Create your views here.
def home(request):
    return render(request, './index.html')


def searchResults(request):
    total_count = 0

    prof_query = "SELECT fname, lname, dept_name FROM Faculty AS F INNER JOIN Professor AS P ON F.faculty_id = P.faculty_id INNER JOIN Department AS D ON D.dept_code=F.dept_code"

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

    ta_query = "SELECT fname, lname FROM Faculty as F INNER JOIN Teaching_Assistant as T ON F.faculty_id = T.faculty_id"
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

    CS_dept_query = "SELECT fname, lname, dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=418"
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

    CE_dept_query = "SELECT fname, lname, dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=1612"
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

    IS_dept_query = "SELECT fname, lname, dept_name FROM Department AS D INNER JOIN Faculty AS F ON D.dept_code=F.dept_code WHERE D.dept_code=1830"
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



    courses = Course.objects.all()

    tmp1 = Department.objects.all().count()
    tmp2 = Course.objects.all().count()
    total_count += tmp1 + tmp2

    result = {
        'professors': prof,
        'TAs': ta,
        'CS_dept': CS_dept,
        'CE_dept': CE_dept,
        'IS_dept': IS_dept,
        'courses': courses,
        'count': total_count
    }
    return render(request, './searchResults.html', result)


def professor(request):
    return render(request, './professor.html')

def rate(request):
    return render(request, './rate.html')

def search(request):
    return render(request, './search.html')

def queue(request):
    return render(request, './queue.html')

def sign_in(request):
    return render(request, './signin.html')

def sign_up(request):
    return render(request, './signup.html')

def course(request):
    return render(request, './course.html')

def rate_course(request):
    return render(request, './rateCourse.html')

def dashboard(request):
    return render(request, './dashboard.html')