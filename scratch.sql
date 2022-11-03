UPDATE students SET age = DATE_PART('year','2022-11-03'::date) - DATE_part('year',students.birthdate::date);
SELECT AVG(age) from students;
SELECT AVG(DATE_PART('year','2022-11-03'::date) - DATE_part('year',students.birthdate::date)) from students;
SELECT addresses.city FROM addresses WHERE addresses.city LIKE '% %';
SELECT * FROM addresses;
SELECT students.first_name,students.last_name,addresses.city FROM students INNER JOIN addresses ON addresses.id = students.address_id WHERE addresses.city LIKE '% %';
SELECT AVG(credits) from classes;
SELECT * from classes;
SELECT students.first_name,students.last_name,enrollments.grade from students INNER JOIN enrollments ON students.id = enrollments.student_id WHERE enrollments.grade = 'A';
SELECT * from enrollments;
SELECT students.first_name,SUM(credits) FROM students INNER JOIN enrollments on students.id = enrollments.student_id INNER JOIN classes ON enrollments.class_id = classes.id GROUP BY students.first_name;
SELECT students.first_name,SUM(credits) FROM students INNER JOIN enrollments on students.id = enrollments.student_id INNER JOIN classes ON enrollments.class_id = classes.id WHERE enrollments.grade IS NOT NULL GROUP BY students.first_name;
SELECT student_id,classes.name FROM classes INNER JOIN enrollments on classes.id = enrollments.class_id;
SELECT first_name, last_name,birthdate from students WHERE students.birthdate >= '1982-01-01' AND students.birthdate < '1986-01-01';
SELECT * from students;
SELECT * from enrollments INNER JOIN classes ON enrollments.class_id = classes.id;
--INSERT INTO enrollments (student_id,class_id,grade) VALUES (5,4,'A'); THIS IS BROKEN
SELECT * from enrollments INNER JOIN classes ON enrollments.class_id = classes.id WHERE student_id = 5;


-- Enrollments - > enrollments
-- Student name -> students
-- Grade -> enrollments
-- Student_ID -> students
-- Class Name -> classes

SELECT * from students;
--SELECT students.first_name,SUM(credits) FROM students INNER JOIN enrollments on students.id = enrollments.student_id INNER JOIN classes ON enrollments.class_id = classes.id WHERE enrollments.grade IS NOT NULL GROUP BY students.first_name;
SELECT students.first_name, enrollments.grade, classes.name FROM students INNER JOIN enrollments on students.id = enrollments.student_id INNER JOIN classes ON enrollments.class_id = classes.id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;
SELECT students.first_name, enrollments.grade, classes.name FROM enrollments INNER JOIN students ON enrollments.student_id = students.id LEFT JOIN classes ON enrollments.class_id = enrollments.id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL; 
--WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;
SELECT * FROM students INNER JOIN enrollments ON students.id = enrollments.student_id;
SELECT * FROM enrollments INNER JOIN students ON enrollments.student_id = students.id; 

SELECT students.first_name, enrollments.grade, classes.name FROM students INNER JOIN enrollments ON students.id = enrollments.student_id INNER JOIN classes ON enrollments.class_id = classes.id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;;
SELECT students.first_name, enrollments.grade, classes.name FROM enrollments INNER JOIN students ON enrollments.student_id = students.id INNER JOIN classes ON enrollments.class_id = classes.id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;; 







