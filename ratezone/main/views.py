from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Course, Department, Faculty, Professor, TeachingAssistant, AuthUser
from .models import DeptGeneralcomments, FacultyCourse, FacultyMiscellaneous, FacultyPersonality, FacultyWorkload
from .models import SimilarCourses, SimilarFaculty, UserCourseRev, UserDept, UserFacultyRev
from django.db import connection
cursor = connection.cursor()
from django.contrib.auth import logout, login

# Create your views here.
def home(request):
    return render(request, './index.html')

def searchResults(request):
    return render(request, './searchResults.html')

def professor(request):
    if request.method == 'POST':
        for i in request.POST:
            print(request.POST['getrow'])
        # prof = Professor.objects.get_

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