from django.urls import path
from . import views
# from .views import home
# from ..artGallery import settings

urlpatterns = [
    path('', views.home, name='home'),
]