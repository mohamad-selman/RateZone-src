import os
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ratezone.settings')
django.setup()
import numpy as np
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import Normalizer
from django.db import connections
from main.models import *
import mysql.connector

mydb = mysql.connector.connect(database='ratezoneDB',
                               user='ratezone_userAdmin', password='ratezone@123')
cursors = mydb.cursor()

# To represent departments
depts = {418:0, 1612:0.5, 1830:1, 480:1.5, 410:2}
total_count=0
# should return all the data to be input in the numpy array
prof_query = "SELECT E.teaching_quality, E.exams_difficulty, E.department_id FROM Employee AS E WHERE E.overall_rating"

cursors.execute(prof_query)
prof_row = cursors.fetchall()
tmp = cursors.description
prof = []
map = []
for r in prof_row:
    total_count += 1
    i = 0
    d = {}
    while i < len(tmp):
        d[tmp[i][0]] = r[i]
        i += 1
    if d['department_id']==418:
        d['department_id']=0
    elif d['department_id']==1612:
        d['department_id']=0.5
    elif d['department_id']==1830:
        d['department_id']=1
    elif d['department_id']==480:
        d['department_id']=1.5
    elif d['department_id']==410:
        d['department_id']=2
    prof.append(d)



l3 = []
for p in prof:
    l3.append(list(p.values()))


numarray = np.array(l3)
# print(numarray)


map_query = "SELECT E.employee FROM Employee AS E WHERE E.overall_rating"
cursors.execute(map_query)
map_row = cursors.fetchall()
tmp = cursors.description
map = []
for r in map_row:
    total_count += 1
    i = 0
    d = {}
    while i < len(tmp):
        d[tmp[i][0]] = r[i]
        i += 1
    map.append(d)

print('Printing map')
print(map)



'''
[Teaching_Quality, Exams_Difficulty, Department, Research_Area]
      1->5               1->5            
'''
samples = np.array(numarray)

# returns the nearest k neighbors
#neigh = NearestNeighbors(n_neighbors=4).fit(samples)
#similar = neigh.kneighbors(samples, return_distance=False)

# returns the nearest neighbors within the given radius
neigh = NearestNeighbors(radius=1.).fit(samples)
similar = neigh.radius_neighbors(samples, return_distance=False)


for i in range(len(similar)):
    print(f"Professors similar to {map[i]['employee']}:")
    for j in similar[i]:
        if i != j:
            print(map[j])
            try:
#               em = Employee.objects.get(employee=map[i]['employee'])
#               similar_employee = Employee.objects.get(employee=map[j]['employee'])
#               similar_faculty = SimilarFaculty.objects.create(employee=em, similar_faculty=similar_employee.employee)
            except:
                print('Error inserting')
    print("\n")

