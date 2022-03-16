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
    return HttpResponse('Hello')