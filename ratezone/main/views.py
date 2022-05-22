import re
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
from django.conf import settings
import requests
from django.contrib import messages
from json import loads
from django.http import JsonResponse

mydb = mysql.connector.connect(database='ratezoneDB',
                               user='ratezone_userAdmin', password='ratezone@123')
cursors = mydb.cursor()


def test_comments(request):
    f = open('data.json', 'r')
    print(f)
    data = loads(f.read())
    f.close()

    print(data[6]['comment'])

    result = {
        'comm': data,
    }

    return render(request, './comm.html', result)


# Create your views here.
def home(request):
    return render(request, './index.html')


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
        print(tmp)
        element.overall_rating = round(tmp, decimal)
    return obj


def Round_get(obj, dec):
    tmp = obj.overall_rating
    obj.overall_rating = round(tmp, dec)
    return obj


def searchResults(request):
    total_count = 0
    print('Here')
    if request.method == 'POST':
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
                    SELECT E.fname, E.lname, D.dept_name AS 'department', ROUND(E.overall_rating, 2) AS 'overall_rating', 
                    E.teaching_quality, E.employee FROM Employee AS E
                    INNER JOIN Department AS D ON D.department=E.department_id WHERE E.fname LIKE %s OR E.lname LIKE %s
                    '''
            data = (get_name, get_name)
            print(f'data is {data}')
            cursors.execute(query, data)
        else:
            query = '''
                    SELECT E.fname, E.lname, D.dept_name AS 'department', ROUND(E.overall_rating, 2) AS 'overall_rating', 
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

    prof = Employee.objects.all().order_by('-overall_rating')
    prof = Round(prof, 2)
    prof_count = len(prof)

    CS_dept = Employee.objects.filter(department_id=418).order_by('-overall_rating')
    CS_dept = Round(CS_dept, 2)
    cs_count = len(CS_dept)

    CE_dept = Employee.objects.filter(department_id=1612).order_by('-overall_rating')
    CE_dept = Round(CE_dept, 2)
    ce_count = len(CE_dept)

    IS_dept = Employee.objects.filter(department_id=1830).order_by('-overall_rating')
    IS_dept = Round(IS_dept, 2)
    is_count = len(IS_dept)

    MATH_dept = Employee.objects.filter(department_id=410).order_by('-overall_rating')
    MATH_dept = Round(MATH_dept, 2)
    math_count = len(MATH_dept)
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
    overall_rating = em.overall_rating
    recommended_percentage = (overall_rating * 100) / 5
    recommended_percentage = round(recommended_percentage, 2)

    rev_count = UserFacultyRev.objects.filter(employee_id=prof).aggregate(Count('review'))
    rev_count = rev_count['review__count']

    sim_prof = []
    sim = em.similarfaculty_set.all()
    get_similar = []
    for i in range(0, len(sim)):
        get_similar.append(sim[0].similar_faculty)

    for ele in get_similar:
        sim_prof.append(Employee.objects.get(employee=ele))

    sim_prof = Round(sim_prof, 2)

    # get all revs
    reviews = UserFacultyRev.objects.filter(employee_id=faculty_id)

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
def rate(request, prof_id=None):
    uname = request.user.username
    user = User.objects.get(username=uname)
    faculty_id = prof_id

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
            # D=request.POST['D']
            # Let user include course, or choose in general
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
                em = Employee.objects.get(employee=faculty_id)
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
                        FacultyPersonality.objects.create(employee=em, personality=element, user=user, review=u_rate)
                    for element in misc:
                        FacultyMiscellaneous.objects.create(employee=em, miscellaneous=element, user=user,
                                                            review=u_rate)
                except:
                    print('Failed to insert tags')

                if u_rate:
                    print('A record has been created')

                print('Success')

                try:
                    # after each rate
                    # Updates the teaching quality, exams difficulty, and overall rating scores
                    update_scores(faculty_id)
                    # similar_professors()
                except:
                    print('Could not update scores')
            except:
                print('Could not review')
        else:
            messages.error(request, 'Invalid reCAPTCHA. Please try again.')

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
    if request.method == 'POST':
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
            fname = request.POST['name']
            username = request.POST['username']
            user_email = request.POST['email']
            passw = request.POST['password']

            print(f'Record: {fname}, {username}, {user_email}, {passw}')

            try:
                print('Here')
                User.objects.create_user(password=passw, username=username, first_name=fname, email=user_email)
                print('HI')
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
    revs = UserFacultyRev.objects.filter(user_id=user_obj).distinct()
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
            try:
                print('Here 1')
                get_rev = UserReactFaculty.objects.get(review_id=rev_id, user_id=user_id)
                if get_rev.upvote == 1:
                    # like already exists, return
                    print('User Already Liked this review')
                    msg = "User Already Liked this review"
                    return HttpResponse(msg)

                if get_rev.downvote == 1:
                    print('Here 2')
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(downvote=0)
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(upvote=1)
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    dislikes = rev.downvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(downvotes=dislikes - 1)

            except:
                # Means the user has not liked that review
                print('First time interacting with the button')
                UserReactFaculty.objects.create(upvote=1, review_id=rev_id, user_id=user_id)

            rev = UserFacultyRev.objects.get(review=rev_id)
            likes = rev.upvotes
            UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes + 1)
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
                if get_rev.downvote == 1:
                    print('User Already disliked this review')
                    msg = "User Already disliked this review"
                    return HttpResponse(msg)

                if get_rev.upvote == 1:
                    print('Here 2')
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(upvote=0)
                    UserReactFaculty.objects.filter(review_id=rev_id, user_id=user_id).update(downvote=1)
                    rev = UserFacultyRev.objects.get(review=rev_id)
                    likes = rev.upvotes
                    UserFacultyRev.objects.filter(review=rev_id).update(upvotes=likes - 1)

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
