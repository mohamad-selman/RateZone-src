from django import template
from ..models import *
import numpy as np
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import Normalizer
from django.db import connections
from .models import *
from django.contrib.auth import logout, login
cursors = connections['default'].cursor()



register = template.Library()

@register.filter(name='similarity')
def similarity(prof_id):

    deps = [{418:0}, {1612:0.5}, {1830:1}, {480:1.5}, {420:2}]
    prof_query = "SELECT F.teaching_quality, F.exams_difficulty, F.dept_code FROM Faculty AS F WHERE teaching_quality"
    cursors.execute(prof_query, [prof_id])
    prof_row = cursors.fetchall()
    tmp = cursors.description
    prof = []
    for r in prof_row:
        i = 0
        d = {}
        while i < len(tmp):
            d[tmp[i][0]] = r[i]
            i += 1
        prof.append(d)

    print(prof)



    '''
    [Teaching_Quality, Exams_Difficulty, Department ]
          1->5               1->5            
    '''

    samples = np.array([
                [1.5, 3., 1.], # Adel Aljomah
                [4.6, 4.3, 1.], # Fawaz Alazemi
                [3.5, 2.8, 1.], # Hamdi Yahyaoui
                [4.1, 3., 1.], # Hamid Alhamadi
                [1.5, 2.8, 1.], # Hazem Raafat
                [1.1, 4.3, 1.], # Hosam AboElfotoh
                [4.2, 4.3, 1.], # Husain Ibraheem
                [4.5, 3.8, 1.], # Hussain Almohri
                [1.7, 2.8, 1.], # Khalil Abdullah
                [1.2, 3.5, 1.], # Maha Alabduljaleel
                [4.3, 4., 1.], # Mansour Abdulaziz
                [4.5, 2.2, 1.], # Mohammad Almutawa
                [4.2, 2.4, 1.], # Mohammad Smaoui
                [1., 3.3, 1.], # Mohammad Ali Almulla
                [4., 4.3, 1.], # Naser AlDuaij
                [4.4, 3., 1.]  # Zaid Hussain
            ])

    # returns the nearest k neighbors
    '''
    neigh = NearestNeighbors(n_neighbors=4).fit(samples)
    similar = neigh.kneighbors(samples, return_distance=False)
    '''

    # returns the nearest neighbors within the given radius
    neigh = NearestNeighbors(radius=1.).fit(samples)
    similar = neigh.radius_neighbors(samples, return_distance=False)

    for i in range(len(similar)):
        print(f"Professors similar to {prof[i]}:")
        for j in similar[i]:
            if i != j:
                print(prof[j])
        print("\n")
    

