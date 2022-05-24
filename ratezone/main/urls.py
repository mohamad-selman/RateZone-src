from django.urls import path, re_path
from . import views


urlpatterns = [
    # path('comm/', views.test_comments),
    path('', views.home, name='home'),
    # path('test/', views.test, name='test'),
    # path('test2/', views.test2, name='test2'),
    path('course/', views.course, name='course'),
    path('dashboard/', views.dashboard, name='dashboard'),
    # path('professor/', views.professor, name='professor',  kwargs={'prof_id': ''}),
    # path('professorTwo/<str:prof_name>', views.professorTwo, name='professorTwo'),
    path('professor/<int:prof_id>/', views.professor, name='professor'),
    path('add_to_queue/', views.add_to_queue, name='queue'),
    path('queue/', views.queue, name='queue'),
    path('remove_from_queue/<int:prof_id>/', views.remove_from_queue, name='remove_from_queue'),
    path('like/', views.like, name='like'),
    path('dislike/', views.dislike, name='dislike'),
    path('rate/', views.rate, name='rate'),
    path('rate/<int:prof_id>/', views.rate, name='rate'),
    path('report/', views.report, name='report'),
    # path('follow/', views.follow_updates, name='follow_updates'),
    path('delete_review/', views.delete_review, name='delete_review'),
    path('rate_page/<int:prof_id>/', views.rate_page, name='rate_page'),
    path('rateCourse', views.rate_course, name='rate_course'),
    path('search/', views.search, name='search'),
    path('searchResults/', views.searchResults, name='searchResults'),
    path('login/', views.sign_in, name='sign_in'),
    path('logout/', views.logoutUser, name='logoutUser'),
    path('signup/', views.sign_up, name='sign_up'),
]
