from django.contrib import admin
from .models import *
# Register your models here.

admin.site.register(Course)
admin.site.register(Department)
admin.site.register(Faculty)
admin.site.register(Professor)
admin.site.register(TeachingAssistant)
admin.site.register(FacultyCourse)
admin.site.register(FacultyMiscellaneous)
admin.site.register(FacultyPersonality)
admin.site.register(FacultyWorkload)
admin.site.register(SimilarCourses)
admin.site.register(SimilarFaculty)
admin.site.register(UserCourseRev)
admin.site.register(UserDept)
admin.site.register(UserFacultyRev)

