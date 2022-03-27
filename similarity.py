import numpy as np
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import Normalizer

prof = ["Adel Aljomah", "Fawaz Alazemi", "Hamdi Yahyaoui",
       "Hamid Alhamadi", "Hazem Raafat", "Hosam AboElfotoh",
       "Husain Ibraheem", "Hussain Almohri", "Khalil Abdullah",
       "Maha Alabduljaleel", "Mansour Abdulaziz", "Mohammad Almutawa",
       "Mohammad Smaoui", "Mohammad Ali Almulla", "Naser AlDuaij",
       "Zaid Hussain"
       ]

'''
[Teaching_Quality, Exams_Difficulty, Department, Research_Area]
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

