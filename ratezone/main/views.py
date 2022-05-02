from django.shortcuts import render
from .models import *
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.models import User
from main.updating_scores import update_scores
from django.db.models import Avg, Sum, Count
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from .decorators import *
import mysql.connector

mydb = mysql.connector.connect(database='ratezoneDB',
                               user='ratezone_userAdmin', password='ratezone@123')
cursors = mydb.cursor()


# Create your views here.
def home(request):
    return render(request, './index.html')


def test(request):
    profs = Employee.objects.all()
    return render(request, './index_old.html',
                  {"Profs": profs})


# the function takes the query result and the cursor description of an executed query
# converts from a tuple-like notation to dictionary-like notation
# needed for each custom query executed
# Not needed if django ORM is used
def convert_to_dictionary(cursor_description, query_result):
    total_count = 0
    returning_value = []
    for r in query_result:
        total_count += 1
        i = 0
        d = {}
        while i < len(cursor_description):
            d[cursor_description[i][0]] = r[i]
            i += 1
        returning_value.append(d)
    return returning_value, total_count


def Round(obj, decimal):
    for element in obj:
        tmp = element.overall_rating
        element.overall_rating = round(tmp, decimal)
    return obj


def Round_get(obj, dec):
    tmp = obj.overall_rating
    obj.overall_rating = round(tmp, dec)
    return obj


def searchResults(request):
    total_count = 0
    print('Here')
    if request.method == "POST":
        print('Here again')
        get_name = request.POST.get('tags')
        print(get_name)
        name = get_name.strip()
        l = name.split(' ')
        print(l)
        print('length: ')
        print(len(l))
        if len(l) == 1:
            query = '''
                    SELECT E.fname, E.lname, D.dept_name, ROUND(E.overall_rating, 2) AS 'overall_rating', 
                    E.teaching_quality, E.employee FROM Employee AS E
                    INNER JOIN Department AS D ON D.department=E.department_id WHERE E.fname LIKE %s OR E.lname LIKE %s
                    '''
            data = (get_name, get_name)
            print(f'data is {data}')
            cursors.execute(query, data)
        else:
            query = '''
                    SELECT E.fname, E.lname, D.dept_name, ROUND(E.overall_rating, 2) AS 'overall_rating', 
                    E.teaching_quality, E.employee FROM Employee AS E
                    INNER JOIN Department AS D ON D.department=E.department_id WHERE CONCAT(E.fname, ' ', E.lname) LIKE %s
                    '''
            print('executing here')
            cursors.execute(query, [name])

        prof_row = cursors.fetchall()
        tmp = cursors.description
        (prof, total_count) = convert_to_dictionary(tmp, prof_row)
        print(prof)
        result = {
            'professors': prof
        }
        return render(request, './searchResults.html', result)
    # for all the custom queries executed!
    # cursors return the query result in the form of a tuple
    # needs to be converted to dictionary-like notation
    # that is what the loop does

    # the following is a query that returns all professors
    # with their desired attributes
    # prof = Employee.objects.all()
    prof_query = '''
                    SELECT DISTINCT E.fname, E.lname, D.dept_name,
                    ROUND(E.overall_rating, 2) AS 'overall_rating',
                    E.teaching_quality, E.employee FROM Employee AS E 
                    INNER JOIN Department AS D ON
                    D.department=E.department_id ORDER BY overall_rating DESC
                  '''

    # executing the query through connection cursor
    cursors.execute(prof_query)
    prof_row = cursors.fetchall()
    tmp = cursors.description
    prof_count = 0
    (prof, prof_count) = convert_to_dictionary(tmp, prof_row)

    # CS query

    CS_dept_query = '''
                SELECT DISTINCT E.employee, E.fname, E.lname, ROUND(E.overall_rating,2) AS 'overall_rating',
                D.dept_name FROM Department AS D INNER JOIN Employee AS E ON D.department=E.department_id
                WHERE D.department=418 ORDER BY overall_rating DESC
                '''
    cursors.execute(CS_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    cs_count = 0
    (CS_dept, cs_count) = convert_to_dictionary(tmp, dept_row)

    # CE query

    CE_dept_query = '''
                SELECT DISTINCT E.employee, E.fname, E.lname, ROUND(E.overall_rating,2) AS 'overall_rating', D.dept_name
                FROM Department AS D INNER JOIN Employee AS E ON D.department=E.department_id
                WHERE D.department=1612 ORDER BY overall_rating DESC
                '''
    cursors.execute(CE_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    ce_count = 0
    (CE_dept, ce_count) = convert_to_dictionary(tmp, dept_row)
    # print(CE_dept)

    # IS query

    IS_dept_query = '''
                SELECT DISTINCT E.employee, E.fname, E.lname, ROUND(E.overall_rating,2) AS 'overall_rating', D.dept_name
                FROM Department AS D INNER JOIN Employee AS E ON D.department=E.department_id
                WHERE D.department=1830 ORDER BY overall_rating DESC
                '''
    cursors.execute(IS_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    is_count = 0
    (IS_dept, is_count) = convert_to_dictionary(tmp, dept_row)

    Math_dept_query = '''
                SELECT DISTINCT E.employee, E.fname, E.lname, ROUND(E.overall_rating,2) AS 'overall_rating', D.dept_name
                FROM Department AS D INNER JOIN Employee AS E ON D.department=E.department_id
                WHERE D.department=410 ORDER BY overall_rating DESC
                '''
    cursors.execute(Math_dept_query)
    dept_row = cursors.fetchall()
    tmp = cursors.description
    math_count = 0
    (MATH_dept, math_count) = convert_to_dictionary(tmp, dept_row)

    # courses = Course.objects.all()

    course_query = '''
                SELECT * FROM Course AS C INNER JOIN Department AS D ON C.course
                LIKE CONCAT('%', D.department, '%')
                '''
    cursors.execute(course_query)
    course_row = cursors.fetchall()
    tmp = cursors.description
    course_count = 0
    (courses, course_count) = convert_to_dictionary(tmp, course_row)

    # print(courses)

    tmp1 = Department.objects.all().count()
    tmp2 = Course.objects.all().count()
    total_count = tmp1 + tmp2 + prof_count + ce_count + cs_count + math_count

    result = {
        'professors': prof,
        'CS_dept': CS_dept,
        'CE_dept': CE_dept,
        'IS_dept': IS_dept,
        'MATH_dept': MATH_dept,
        'courses': courses,
        'count': total_count
    }

    return render(request, './searchResults.html', result)


def professorTwo(request, prof_name):
    print(prof_name)
    name = prof_name.split(' ')
    first_name = name[0]
    second_name = name[1]
    query = Employee.objects.filter(fname=first_name, lname=second_name).get()
    print(query)
    return HttpResponse(status=200)


def professor(request, prof_id=None):
    # for all the custom queries executed!
    # cursors return the query result in the form of a tuple
    # needs to be converted to dictionary-like notation
    # that is what the loop does
    faculty_id = prof_id
    prof = Employee.objects.get(employee=faculty_id)
    prof = Round_get(prof, 2)
    em = Employee.objects.get(employee=faculty_id)
    avg = em.overall_rating
    avg = (avg * 100) / 5
    avg = round(avg, 2)

    rev_count = UserFacultyRev.objects.filter(employee_id=prof).aggregate(Count('review'))
    rev_count = rev_count['review__count']
    similar_query = '''
                SELECT E.fname,E.lname, E2.fname,E2.lname, ROUND(E2.overall_rating, 2) AS 'overall_rating' 
                from Employee E inner join similar_faculty S1 on S1.employee_id=E.employee 
                INNER JOIN Employee E2 on S1.similar_faculty=E2.employee WHERE E.employee=%s
                '''
    cursors.execute(similar_query, [faculty_id])
    sim_row = cursors.fetchall()
    tmp = cursors.description
    sim_count = 0
    (sim_prof, sim_count) = convert_to_dictionary(tmp, sim_row)

    # print(faculty_id)
    # get all revs
    reviews = UserFacultyRev.objects.filter(employee_id=faculty_id)

    result = {
        'prof': prof,
        'similar_professors': sim_prof,
        'revs': reviews,
        'rev_count': rev_count,
        'avg': avg
    }
    return render(request, './professor.html', result)


@login_required(login_url='sign_in')
def rate(request, prof_id=None):
    uname = request.user.username
    user = User.objects.get(username=uname)
    faculty_id = prof_id

    if request.method == 'POST':
        # D=request.POST['D']
        quality = request.POST['quality']
        difficulty = request.POST['difficulty']
        overall_rate = request.POST['rate']
        workload = request.POST.getlist('workload')
        personality = request.POST.getlist('personality')
        misc = request.POST.getlist('misc')
        comment = request.POST['comment']

        try:
            em = Employee.objects.get(employee=faculty_id)
            u_rate = UserFacultyRev.objects.create(overall_rating=overall_rate, difficulty_rating=difficulty,
                                                   student_thoughts=comment,
                                                   teaching_quality=quality, employee_id=em.employee, user_id=user.id)
            # Create records for workload, personality, and misc

            try:
                # insert each element
                for element in workload:
                    FacultyWorkload.objects.create(employee=em, workload=element, user=user, review=u_rate)
                for element in personality:
                    FacultyPersonality.objects.create(employee=em, personality=element, user=user, review=u_rate)
                for element in misc:
                    FacultyMiscellaneous.objects.create(employee=em, miscellaneous=element, user=user, review=u_rate)
            except:
                print('Failed to insert tags')

            if u_rate:
                print('A record has been created')

            print('Success')

            try:
                # after each rate
                # Updates the teaching quality, exams difficulty, and overall rating scores
                update_scores(faculty_id)
            except:
                print('Could not update scores')
        except:
            print('Could not review')

    return render(request, './reviewSubmitted.html', {'prof': faculty_id})


@login_required(login_url='sign_in')
def rate_page(request, prof_id):
    p = Employee.objects.get(employee=prof_id)
    prof = Round_get(p, 2)
    result = {
        'fname': prof.fname,
        'lname': prof.lname,
        'pid': prof.employee
    }
    return render(request, './rate.html', result)


def search(request):
    return render(request, './search.html')


@login_required(login_url='sign_in')
def queue(request):
    # we need professor id and user id
    user_id = request.user.id
    user = User.objects.get(id=user_id)
    p = Employee.objects.filter(users=user)
    prof = Round(p, 2)

    result = {
        'professors': prof
    }
    return render(request, './queue.html', result)


@csrf_exempt
@login_required(login_url='sign_in')
def add_to_queue(request):
    if request.method == "POST":
        prof_id = request.POST.get('prof_id', None)
        faculty_id = prof_id
        uname = request.user.username
        user = User.objects.get(username=uname)
        user_id = user.id
        try:
            if prof_id is not None:
                user = User.objects.get(id=user_id)
                faculty = Employee.objects.get(employee=faculty_id)
                faculty.users.add(user)
                msg = f'Successfully Returning from adding prof to queue: {prof_id}'
            else:
                msg = "prof_id is none"
        except:
            print('Failed to insert')
            msg = f'Failed from adding prof to queue: {prof_id}'
        return HttpResponse(msg)
    return HttpResponse('Failed')


@csrf_exempt
@login_required(login_url='sign_in')
def remove_from_queue(request, prof_id=None):
    if prof_id is None:
        msg = 'Professor id is None: Fix the error'
        return HttpResponse(msg)
    print('Removing a professor from queue')
    # print(prof_id)
    faculty_id = prof_id
    uname = request.user.username
    # print(uname)
    user = User.objects.get(username=uname)
    user_id = user.id
    # print(f'{user_id} and {faculty_id}')
    try:

        deletion_query = "DELETE FROM Employee_users WHERE user_id=%s AND employee_id=%s"
        data = (user_id, faculty_id)
        cursors.execute(deletion_query, data)
        print('executed successfully')
    except:
        print('Error')
    return HttpResponse(status=200)


@unauthenticated_user
def sign_in(request):
    if request.method == 'POST':
        username = request.POST['username']
        passw = request.POST['password']

        # print(f'user email is {username} and the password is {passw}')
        user = authenticate(request, username=username, password=passw)

        if user is not None:
            # print('HEy HO')
            login(request, user, backend='django.contrib.auth.backends.ModelBackend')
            # print('Yo YO')
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
    uname = request.user.username
    user = User.objects.get(username=uname)
    user_obj = User.objects.get(id=user.id)
    revs = UserFacultyRev.objects.filter(user_id=user_obj)
    rev_result = []
    for i in range(len(revs)):
        rev_result.append(Employee.objects.get(employee=revs[i].employee.employee))

    # print(user_obj)
    rev_result = Round(rev_result, 2)
    content = {
        'user': user_obj,
        'revs': rev_result
    }
    return render(request, './dashboard.html', content)
