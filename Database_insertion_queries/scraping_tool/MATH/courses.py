# scraping the courses of CS
import requests
import re
from bs4 import BeautifulSoup

page = requests.get('https://math.sci.kuniv.edu.kw/undergraduate/math/course-listings')
soup = BeautifulSoup(page.content, 'html.parser')


courses = soup.select("div .tyJCtd p")
tokenize = []
for element in courses:
    tmp = element.text
    tokenize.append(tmp)


for e in tokenize:
    print(e)

       
    

