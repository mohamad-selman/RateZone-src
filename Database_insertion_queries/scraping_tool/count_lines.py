f = open('professors.sql', 'r')

line = f.read()
List = line.split(';')
counter=  0
for i in List:
    counter += 1

print(counter)