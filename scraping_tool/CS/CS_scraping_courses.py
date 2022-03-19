# scraping the courses of CS
import requests
import re
from bs4 import BeautifulSoup

page = requests.get('https://www.cs.ku.edu.kw/undergraduate/courses/')
soup = BeautifulSoup(page.content, 'html.parser')


courses = soup.select("div .entry-content p")


extraction_list = []
for c in courses:
    extraction_list.append(c.text)

tmp = []
for e in extraction_list:
    tmp.append(e.split('/n'))



       
    

