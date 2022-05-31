from django.urls import path, re_path
from . import views


urlpatterns = [
    # path('comm/', views.test_comments),
    path('', views.home, name='home'),
    # path('test/', views.test, name='test'),
    # path('test2/', views.test2, name='test2'),
    path('dashboard/', views.dashboard, name='dashboard'),
    # path('professor/', views.professor, name='professor',  kwargs={'prof_id': ''}),
    # path('professorTwo/<str:prof_name>', views.professorTwo, name='professorTwo'),
    path('add_to_queue/', views.add_to_queue, name='queue'),
    path('queue/', views.queue, name='queue'),
    path('remove_from_queue/<int:prof_id>/', views.remove_from_queue, name='remove_from_queue'),
    path('like/', views.like, name='like'),
    path('dislike/', views.dislike, name='dislike'),
    path('report/', views.report, name='report'),
    # path('follow/', views.follow_updates, name='follow_updates'),
    path('delete_review/', views.delete_review, name='delete_review'),
    path('change_username/', views.change_username, name='change_username'),
    path('change_fname/', views.change_fname, name='change_fname'),
    path('change_lname/', views.change_lname, name='change_lname'),
    path('change_email/', views.change_email, name='change_email'),
    path('search/', views.search, name='search'),
    path('searchResults/', views.searchResults, name='searchResults'),
    path('login/', views.sign_in, name='sign_in'),
    path('logout/', views.logoutUser, name='logoutUser'),
    path('signup/', views.sign_up, name='sign_up'),

    path('course/<int:id>', views.course, name='course'),
    path('instructor/<int:prof_id>/', views.professor, name='professor'),
    path('dept/<int:id>/', views.dept, name='dept'),
    path('rate/<str:item>/<int:id>/', views.rate, name='rate'),
    path('submit_rate/<str:item>/<int:id>/', views.submit_rate, name='submit_rate'),

    # Abdulaziz Faraj
    path('bot/',views.bot,name='bot'),
    path('l/',views.language,name='language'),
    # re_path('activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/',  views.activate, name='activate'), 
]
