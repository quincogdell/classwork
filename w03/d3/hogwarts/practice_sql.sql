SELECT *
FROM students
INNER JOIN houses
ON students.house_id = houses.id
WHERE students.name = 'Harry Potter';


SELECT students.name
FROM students
INNER JOIN houses
ON students.house_id = houses.id
WHERE houses.name = 'Gryffindor';


