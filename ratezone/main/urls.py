from django.urls import path, re_path
from . import views


urlpatterns = [
    path('', views.home, name='home'),
    path('course/', views.course, name='course'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('professor/', views.professor, name='professor'),
    path('professor/<int:prof_id>/', views.professor, name='professor'),
    path('queue/', views.queue, name='queue'),
    path('queue/<int:prof_id>/', views.queue, name='queue'),
    path('remove_from_queue/<int:prof_id>/', views.remove_from_queue, name='remove_from_queue'),
    path('rate/', views.rate, name='rate'),
    path('rateCourse', views.rate_course, name='rate_course'),
    path('search/', views.search, name='search'),
    path('searchResults/', views.searchResults, name='searchResults'),
    path('login/', views.sign_in, name='sign_in'),
    path('logout/', views.logoutUser, name='logoutUser'),
    path('signup/', views.sign_up, name='sign_up')
]