# Scraping tool to collect and extract professor info in the CS dept.

import requests
from bs4 import BeautifulSoup

page = requests.get('https://www.cs.ku.edu.kw/people/faculty-members/')
soup = BeautifulSoup(page.content, 'html.parser')


professors = soup.select("table tbody tr td")

list_of_professors = []

for p in professors:
    list_of_professors.append(p.text)
    # print(p.text)
    

parsed_list = []

for i in list_of_professors:
    parsed_list.append(i.split())
    # print(i)

# # Filtration process to clean the data
# for p in parsed_list:
#     print(p)
    


page2 = requests.get('https://www.cs.ku.edu.kw/people/faculty-members/')
soup2 = BeautifulSoup(page.content, 'html.parser')

images = soup.select("table tbody tr td img")

for i in images:
    print(i)