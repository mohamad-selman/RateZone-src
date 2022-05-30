import re
from django.shortcuts import render
from scipy.fftpack import idct
from .models import *
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.models import User
from main.updating_scores import update_scores
from django.db.models import Avg, Sum, Count
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from .decorators import *
import mysql.connector
from django.conf import settings
import requests
from django.contrib import messages
from json import loads
from django.http import JsonResponse
from django.db.models import Q
from django.views.decorators.http import require_http_methods
from .db import DB_connect

<<<<<<< HEAD
=======
# Abdulaziz Faraj
from django.core.mail import send_mail
import os
from twilio.rest import Client
from datetime import datetime
>>>>>>> b0231c1495a7f0c8c3b07f4759a216a5d8c31d08

def home(request):
    return render(request, './index.html')


def search(request):
    return redirect('home')


@login_required(login_url='sign_in')
def rate(request, item, id):
    db, cursor = DB_connect()

    if item == 'instructor':
        cursor.execute(f'''
            SELECT fname, lname
            FROM Employee
            WHERE employee={id};
        ''')
        ins = cursor.fetchone()

        cursor.execute(f'''
            SELECT C.course, C.course_name
            FROM Employee E
            JOIN Department D
                ON E.department_id = D.department
            JOIN Course C
                ON C.course DIV 1000 = D.department
            WHERE employee={id};
        ''')
        courses = cursor.fetchall()

        context = {
            'item': item,
            'id': id,
            'fname': ins['fname'],
            'lname': ins['lname'],
            'courses': courses
        }

    elif item == 'course':
        cursor.execute(f'''
            SELECT course_name
            FROM Course
            WHERE course={id};
        ''')
        course = cursor.fetchone()

        context = {
            'item': item,
            'id': id,
            'course_name': course['course_name'],
        }

    elif item == 'dept':
        cursor.execute(f'''
            SELECT dept_name
            FROM Department
            WHERE department={id};
        ''')
        dept = cursor.fetchone()

        context = {
            'item': item,
            'id': id,
            'dept_name': dept['dept_name'],
        }

    cursor.close()
    db.close()

    return render(request, 'rate.html', context)


@login_required(login_url='sign_in')
def submit_rate(request, item, id):
    uname = request.user.username
    user = User.objects.get(username=uname)

    if request.method == 'POST':
        recaptcha_response = request.POST['g-recaptcha-response']
        data = {
            'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
            'response': recaptcha_response
        }
        verify = requests.post('https://www.google.com/recaptcha/api/siteverify', data=data)
        status = verify.json()

        if status['success']:
            if item == 'instructor':
                course_val = request.POST['course']
                if str.isdigit(course_val):
                    course_code = course_val
                    try:
                        course_instance = Course.objects.get(course=course_code)
                    except:
                        return render(request, './error.html')
                else:
                    course_name = course_val
                    try:
                        course_instance = Course.objects.get(course_name=course_name)
                    except:
                        return render(request, './error.html')

                quality = request.POST['quality']
                difficulty = request.POST['difficulty']
                overall_rate = request.POST['rate']
                workload = request.POST.getlist('workload')
                personality = request.POST.getlist('personality')
                misc = request.POST.getlist('misc')
                comment = request.POST['comment']

                try:
                    em = Employee.objects.get(employee=id)
                    u_rate = UserFacultyRev.objects.create(overall_rating=overall_rate, difficulty_rating=difficulty,
                                                           student_thoughts=comment,
                                                           teaching_quality=quality, course_id=course_instance.course,
                                                           employee_id=em.employee, user_id=user.id)

                    # Create records for workload, personality, and misc
                    try:
                        # insert each element
                        for element in workload:
                            FacultyWorkload.objects.create(employee=em, workload=element, user=user, review=u_rate)
                        for element in personality:
                            FacultyPersonality.objects.create(employee=em, personality=element, user=user,
                                                              review=u_rate)
                        for element in misc:
                            FacultyMiscellaneous.objects.create(employee=em, miscellaneous=element, user=user,
                                                                review=u_rate)
                    except:
                        print('Failed to insert tags')

                    try:
                        # after each rate
                        # Updates the teaching quality, exams difficulty, and overall rating scores
                        update_scores(id)
                        # similar_professors()
                    except:
                        print('Could not update scores')
                except:
                    print('Could not review')

            elif item == 'course':
                db, cursor = DB_connect()

                enjoyment = request.POST['enjoyment']
                effort = request.POST['effort']
                overall_rate = request.POST['rate']
                tags = request.POST.getlist('tag')
                comment = request.POST['comment']

                cursor.execute(f'''
                    INSERT INTO user_course_rev(user_id, course_id, enjoyment_rating, effort_required, overall_rating, student_thoughts)
                    VALUES({request.user.id}, {id}, {enjoyment}, {effort}, {overall_rate}, '{comment}');
                ''')

                cursor.execute(f'''
                    SELECT LAST_INSERT_ID() as review;
                ''')
                review = cursor.fetchone()['review']

                for t in tags:
                    cursor.execute(f'''
                        INSERT INTO Course_tags(course_id, review_id, tag)
                        VALUES({id}, {review}, '{t}');
                    ''')

                cursor.close()
                db.close()

            elif item == 'dept':
                db, cursor = DB_connect()

                support = request.POST['support']
                act = request.POST['act']
                overall_rate = request.POST['rate']
                comment = request.POST['comment']

                cursor.execute(f'''
                    INSERT INTO user_dept_rev(user_id, department_id, support_rating, activities_rating, overall_rating, student_thoughts)
                    VALUES({request.user.id}, {id}, {support}, {act}, {overall_rate}, '{comment}');
                ''')

                cursor.close()
                db.close()

        context = {
            'item': item,
            'id': id,
        }

    return render(request, 'reviewSubmitted.html', context)


def course(request, id):
    db, cursor = DB_connect()

    cursor.execute(f'''
        SELECT C.course_name, D.dept_name, C.overall_rating
        FROM Course C
        JOIN Department D
            ON C.course DIV 1000 = D.department
        WHERE course={id};
    ''')
    course = cursor.fetchone()

    cursor.execute(f'''
        SELECT count(*) as rev_count
        FROM user_course_rev
        WHERE course_id={id};
    ''')
    rev_count = cursor.fetchone()

    cursor.execute(f'''
        SELECT student_thoughts, enjoyment_rating, effort_required, upvotes, downvotes
        FROM user_course_rev
        WHERE course_id={id};
    ''')
    reviews = cursor.fetchall()

    context = {
        'course': id,
        'course_name': course['course_name'],
        'dept_name': course['dept_name'],
        'overall_rating': course['overall_rating'],
        'rev_count': rev_count['rev_count'],
        'reviews': reviews,
    }

    cursor.close()
    db.close()

    return render(request, 'course.html', context)


def dept(request, id):
    db, cursor = DB_connect()

    cursor.execute(f'''
        SELECT dept_name, overall_rating, admin_support, activities
        FROM Department
        WHERE department={id};
    ''')
    dept = cursor.fetchone()

    cursor.execute(f'''
        SELECT count(*) as rev_count
        FROM user_dept_rev
        WHERE department_id={id};
    ''')
    rev_count = cursor.fetchone()

    cursor.execute(f'''
        SELECT student_thoughts, upvotes, downvotes
        FROM user_dept_rev
        WHERE department_id={id};
    ''')
    reviews = cursor.fetchall()

    context = {
        'department': id,
        'dept_name': dept['dept_name'],
        'overall_rating': dept['overall_rating'],
        'admin_support': dept['admin_support'],
        'activities': dept['activities'],
        'rev_count': rev_count['rev_count'],
        'reviews': reviews,
    }

    cursor.close()
    db.close()

    return render(request, 'dept.html', context)


def test_comments(request):
    f = open('data.json', 'r')
    print(f)
    data = loads(f.read())
    f.close()

    result = {
        'comm': data,
    }

    return render(request, './comm.html', result)


def test(request):
    profs = Employee.objects.all()
    return render(request, './index_old.html',
                  {"Profs": profs})


def test2(request):
    q = request.POST.get('q')

    if q:
        results = Employee.objects.all()
        urls = {}

        for e in results:
            urls[e.employee] = '/professor/' + str(e.employee)

        return render(request, './search_results_htmx.html', {"results": results, "urls": urls})

    return render(request, './blank.html')


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


@require_http_methods(["POST"])
def searchResults(request):
    db, cursor = DB_connect()

    # Provide fuzzy matching
    # Executed only once in order to add the indexes to the DB
    # cursor.execute('CREATE FULLTEXT INDEX name ON Employee(fname, lname) WITH PARSER NGRAM;')
    # cursor.execute('CREATE FULLTEXT INDEX cname ON Course(course_name) WITH PARSER NGRAM;')

    input = request.POST['input']

    cursor.execute(f'''
        SELECT E.employee, E.fname, E.lname, D.dept_name, ROUND(E.overall_rating, 2) as overall_rating
        FROM Employee E
        JOIN Department D
            ON E.department_id = D.department
        WHERE MATCH(fname, lname) AGAINST('{input}' IN NATURAL LANGUAGE MODE);
    ''')
    employee = cursor.fetchall()

    cursor.execute(f'''
        SELECT C.course, C.course_name, D.dept_name, ROUND(C.overall_rating, 2) as overall_rating
        FROM Course C
        JOIN Department D
            ON C.course DIV 1000 = D.department
        WHERE MATCH(course_name) AGAINST('{input}' IN NATURAL LANGUAGE MODE);
    ''')
    courses = cursor.fetchall()

    context = {
        'employee': employee,
        'courses': courses,
        'next': request.POST['next'],  # redirect to the rating form or to the reviews page
    }

    cursor.close()
    db.close()

    return render(request, './searchResults.html', context)


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
    overall_rating = em.overall_rating
    recommended_percentage = (overall_rating * 100) / 5
    recommended_percentage = round(recommended_percentage, 2)

    rev_count = UserFacultyRev.objects.filter(employee_id=prof).aggregate(Count('review'))
    rev_count = rev_count['review__count']

    sim_prof = []
    sim = em.similarfaculty_set.all()
    get_similar = []
    for i in range(0, len(sim)):
        get_similar.append(sim[i].similar_faculty)

    for ele in get_similar:
        sim_prof.append(Employee.objects.get(employee=ele))

    sim_prof = Round(sim_prof, 2)

    # get all revs
    reviews = UserFacultyRev.objects.filter(employee_id=faculty_id).order_by('-review')

    workload = FacultyWorkload.objects.filter(employee_id=prof).values('workload').distinct()
    misc = FacultyMiscellaneous.objects.filter(employee_id=prof).values('miscellaneous').distinct()
    personality = FacultyPersonality.objects.filter(employee_id=prof).values('personality').distinct()

    result = {
        'prof': prof,
        'similar_professors': sim_prof,
        'revs': reviews,
        'rev_count': rev_count,
        'avg': recommended_percentage,
        'workload': workload,
        'misc': misc,
        'personality': personality
    }
    return render(request, './professor.html', result)


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
    if request.method == 'POST':
        prof_id = request.POST.get('prof_id', None)
        faculty_id = prof_id
        uname = request.user.username
        user = User.objects.get(username=uname)
        try:
            e = Employee.objects.get(employee=faculty_id)
            emp = Employee.objects.filter(users=user)
            for element in emp:
                if element == e:
                    return HttpResponse(status=400)
        except:
            print('Error here')
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
        db, cursor = DB_connect()

        deletion_query = "DELETE FROM Employee_users WHERE user_id=%s AND employee_id=%s"
        data = (user_id, faculty_id)
        cursor.execute(deletion_query, data)
        print('executed successfully')

        cursor.close()
        db.close()

    except:
        print('Error')
    return HttpResponse(status=200)


@unauthenticated_user
def sign_in(request):
    if request.method == 'POST':
        recaptcha_response = request.POST['g-recaptcha-response']
        data = {
            'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
            'response': recaptcha_response
        }
        verify = requests.post('https://www.google.com/recaptcha/api/siteverify', data=data)
        status = verify.json()

        print(status)

        if status['success']:
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
        else:
            messages.error(request, 'Invalid reCAPTCHA. Please try again.')

    return render(request, './signin.html')


@unauthenticated_user
def sign_up(request):
    if request.method == 'POST':
        print('Here')
        recaptcha_response = request.POST['g-recaptcha-response']
        data = {
            'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
            'response': recaptcha_response
        }
        verify = requests.post('https://www.google.com/recaptcha/api/siteverify', data=data)
        status = verify.json()

        print(status)

        if status['success']:
            print('Heree')
            fname = request.POST['fname']
            lname = request.POST['lname']
            username = request.POST['username']
            user_email = request.POST['email']
            passw = request.POST['password']
            major = request.POST['major']

            print(f'Record: {fname}, {lname}, {username}, {user_email}, {passw}, {major}')

            try:
                print('Here')
                User.objects.create_user(password=passw, username=username, first_name=fname, last_name=lname,
                                         email=user_email, major=major)
                print('Got here')
                return redirect('sign_in')
            except:
                return render(request, './error.html')
        else:
            messages.error(request, 'Invalid reCAPTCHA. Please try again.')
    return render(request, './signup.html')


def logoutUser(request):
    logout(request)
    return redirect('home')


@login_required(login_url='sign_in')
def rate_course(request):
    return render(request, './rateCourse.html')


@login_required(login_url='sign_in')
def dashboard(request):
    uname = request.user.username
    user = User.objects.get(username=uname)
    user_obj = User.objects.get(id=user.id)
    revs = UserFacultyRev.objects.filter(user_id=user_obj).distinct()
    rev_result = []
    for i in range(len(revs)):
        rev_result.append(Employee.objects.get(employee=revs[i].employee.employee))

    # print(user_obj)
    rev_result = Round(rev_result, 2)
    zipped_response = zip(rev_result, revs)
    content = {
        'user': user_obj,
        'revs': zipped_response
    }
    return render(request, './dashboard.html', content)


@login_required(login_url='sign_in')
def like(request):
    if request.method == "POST":
        uname = request.user.username
        user = User.objects.get(username=uname)
        user_id = user.id
        print(f'UserID is {user_id}')
        rev_id = request.POST.get('rev_id', None)
        print(f'Rev id is {rev_id}')
        try:
            print('Here 1 - Check if user has already interacted with the button')
            try:
                get_rev = UserReactFaculty.objects.get(review_id=rev_id, user_id=user_id)
                if get_rev.downvote == 1:
                    print('Here 2')
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(downvote=0)
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(upvote=1)
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    dislikes = rev.downvotes
                    likes = rev.upvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(downvotes=dislikes - 1)
                    UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes + 1)

                if get_rev.upvote == 1:
                    # User Already liked this review
                    # Remove like
                    record = UserReactFaculty.objects.get(review_id=rev_id, user_id=user_id)
                    try:
                        record.delete()
                        print('Record Deleted')
                    except:
                        print('Could not delete record')
                    print('Here')
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    likes = rev.upvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes - 1)
            except:
                print('First time executing this')
                UserReactFaculty.objects.create(upvote=1, review_id=rev_id, user_id=user_id)

                rev = UserFacultyRev.objects.get(review=rev_id)
                likes = rev.upvotes
                UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes + 1)

        except RuntimeError:
            print('Could not execute')

        rev = UserFacultyRev.objects.get(review=rev_id)
        likes = rev.upvotes
        dislikes = rev.downvotes
        json_response = {
            'likes': likes,
            'dislikes': dislikes
        }
        return JsonResponse(json_response)

    msg = "Could not like the review"
    return HttpResponse(msg)


@login_required(login_url='sign_in')
def dislike(request):
    if request.method == "POST":
        rev_id = request.POST.get('rev_id', None)
        uname = request.user.username
        user = User.objects.get(username=uname)
        user_id = user.id
        print(f'UserID is {user_id}')
        print(f'Rev id is {rev_id}')
        # First, check if the user has liked that review
        try:
            try:
                print('Here 1')
                get_rev = UserReactFaculty.objects.get(review_id=rev_id, user_id=user_id)
                if get_rev.upvote == 1:
                    print('Here 2')
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(upvote=0)
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(downvote=1)
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    dislikes = rev.downvotes
                    likes = rev.upvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(downvotes=dislikes + 1)
                    UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes - 1)

                if get_rev.downvote == 1:
                    # User Already disliked this review
                    # Remove dislike
                    record = UserReactFaculty.objects.get(review_id=rev_id, user_id=user_id)
                    try:
                        record.delete()
                        print('Record Deleted')
                    except:
                        print('Could not delete record')
                    print('Here')
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    dislikes = rev.downvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(downvotes=dislikes - 1)

            except:
                # Means the user has not liked that review
                print('First time interacting with the button')
                UserReactFaculty.objects.create(downvote=1, review_id=rev_id, user_id=user_id)

                rev = UserFacultyRev.objects.get(review=rev_id)
                dislikes = rev.downvotes
                UserFacultyRev.objects.filter(review=rev_id).update(downvotes=dislikes + 1)
        except:
            print('Could not execute')
        rev = UserFacultyRev.objects.get(review=rev_id)
        likes = rev.upvotes
        dislikes = rev.downvotes
        json_response = {
            'likes': likes,
            'dislikes': dislikes
        }
        return JsonResponse(json_response)

    msg = "Could not dislike the review"
    return HttpResponse(msg)


@login_required(login_url='sign_in')
def report(request):
    if request.method == 'POST':
        rev_id = request.POST.get('rev_id', None)
        try:
            rev = UserFacultyRev.objects.get(review=rev_id)
            rev.report_count = rev.report_count + 1
            msg = 'Thank you for reporting the view'
            return HttpResponse(msg)
        except:
            print('Could not report review')
    msg = "Could not report review"
    return HttpResponse(msg)


@csrf_exempt
@login_required(login_url='sign_in')
def delete_review(request):
    if request.method == 'POST':
        print('Here')
        rev_id = request.POST.get('rev_id', None)
        print(rev_id)
        try:
            print('Here First')
            try:
                misc = FacultyMiscellaneous.objects.get(review_id=rev_id)
                misc.delete()
            except:
                print('Misc: <Empty set>')

            try:
                personality = FacultyPersonality.objects.get(review_id=rev_id)
                personality.delete()
            except:
                print('Personality: <Empty set>')

            try:
                workload = FacultyWorkload.objects.get(review_id=rev_id)
                workload.delete()
            except:
                print('Workload: <Empty set>')

            record = UserFacultyRev.objects.get(review=rev_id)
            record.delete()
            print('Review')

        except:
            print('Could not delete review')
        print('Redirect to dashboard')
        return redirect(dashboard)

    return render(request, './error.html')


@login_required(login_url='sign_in')
def change_username(request):
    if request.method == "POST":
        uname = request.user.username
        user = User.objects.get(username=uname)
        new_username = request.POST.get('uname')
        user.username = new_username
        user.save()
        return HttpResponse(user.username)

    return render(request, './error.html')


@login_required(login_url='sign_in')
def change_fname(request):
    if request.method == "POST":
        uname = request.user.username
        user = User.objects.get(username=uname)
        new_fname = request.POST.get('fname')
        user.first_name = new_fname
        user.save()
        return HttpResponse(user.first_name)

    return render(request, './error.html')


@login_required(login_url='sign_in')
def change_lname(request):
    if request.method == "POST":
        uname = request.user.username
        user = User.objects.get(username=uname)
        new_lname = request.POST.get('lname')
        user.last_name = new_lname
        user.save()
        return HttpResponse(user.last_name)

    return render(request, './error.html')


@login_required(login_url='sign_in')
def change_email(request):
    if request.method == "POST":
        uname = request.user.username
        user = User.objects.get(username=uname)
        new_email = request.POST.get('email')
        user.email = new_email
        user.save()
        return HttpResponse(user.email)

    return render(request, './error.html')



account_sid = 'AC769a838aa381b9b6e804efb14d04faf7'
auth_token = '7f33ba807192520ba912664d77ecb7ed'
client = Client(account_sid, auth_token)

# if request.method == 'POST':
#         bot(request)

@csrf_exempt
def bot(request):
    
    
    if request.method == 'POST':
        message=request.POST["Body"]
        message= message.split()
        print(message)
        how_send_name=request.POST["ProfileName"]
        how_send_number=request.POST["From"]

        str_m='Error'
  
        if (message[0]== "Department" or message[0]== "department") and len(message) ==1  :
            d = Department.objects.all().order_by('dept_name')

            str_m= 'Here all department in ku:\n'
            j=1
            for i in d :
                str_m += '{}- {} \n'.format(j,i)
                j+=1
            
            


        elif (message[0]== "Department" or message[0]== "department") and  len(message)>1  :

            try:
                str_d=''
                for z in range(1, len(message)) :
                    str_d+= '{}'.format(message[z])
                    if(z<(len(message)-1)):
                        str_d+= ' '

                # str_d+= 'A'
                print(str_d)

                d=Department.objects.get(dept_name=str_d)

                p = Employee.objects.filter(main_rank='Faculty', department_id=d.department).order_by('fname')
                # print(p)

                str_m= 'Here all Instructor in *{}* department:\n'.format(d.dept_name)
                j=1
                for i in p :
                    str_m += '{}- {} {}\n'.format(j,i.fname,i.lname)
                    j+=1

                if j==1:
                    str_m='*NO Inofrmation to see*'

            except:
                str_m = 'Invalid input, Please try again'

        elif message[0]== "Instructor" or message[0]== "instructor" :

            try :
            
                fname = message[1]
                lname = message[2]

                em = Employee.objects.get(fname=fname, lname=lname)

                
                revs = UserFacultyRev.objects.filter(employee=em).order_by('-review')[0:3]
                rev_count = UserFacultyRev.objects.filter(employee_id=em.employee).aggregate(Count('review'))


                str_m= 'Here some information about Instructor:\n*{} {}*\n{} department \n\n'.format(message[1],message[2],em.department)
                str_m += 'overall rating based on {} votes is: *{:.2f}/5*\n\n'.format(rev_count['review__count'],em.overall_rating)

                j=1
                for i in revs :
                    str_m += '{}- Student({}):\noverall is {}\nthought is "{}"\n'.format(j,i.user,i.overall_rating,i.student_thoughts)
                    j+=1

                str_m += '\nfor more information about {} {}\nClick the URL:\n*https://ratezone.io/instructor/{}/* \n*OR* you can visit web site:\n*ratezone.io* '.format(message[1],message[2],em.employee)

            except:
                str_m = 'Invalid name, Please try again'

        elif message[0]== "Help":
            str_m='*Department*\nto list all departments\n\n*Department* <name of department>\nto list instructor names\n\n*Instructor* <name of instructor>\nsummary about instructor\n',

        else :
            str_m = "Wlcome {} to Rate zone BOT\nsend *Help* to show available option.\n".format(how_send_name)
            

        
        
        m=client.messages.create(
            from_='whatsapp:+14155238886',
            body=str_m,
            to=how_send_number
            )

        # how_send_name=request.POST["ProfileName"]
        # how_send_number=request.POST["From"]
        #     print(request.POST)
    print('Whatsapp connection :',how_send_number)
    return HttpResponse("thank you")