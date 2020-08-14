
-- SELECT first_name from  teacher

-- JOIN class on teacher.id = class.id


-- SELECT subject from class 
-- JOIN teacher on class.id = teacher.id
-- WHERE last_name =  'Goldine';

-- SELECT guardian.first_name, guardian.last_name, guardian.phone_number, guardian.email from guardian
-- JOIN student on guardian.id = student.id
-- WHERE student.first_name = 'Susannah' AND student.last_name = 'Brosini';



-- SELECT  teacher.first_name, teacher.last_name from teacher
-- LEFT OUTER JOIN house on house.head_of_house = teacher.id
-- LEFT OUTER JOIN student on student.house = house.id
-- WHERE student.first_name = 'Astrix' AND student.last_name = 'Hollindale';


-- SELECT student.first_name, student.last_name, student.guardian from student 
-- LEFT OUTER JOIN guardian on student.guardian = guardian.id
-- WHERE guardian.title = 'Mr' AND guardian.last_name = 'Beldum';

-- SELECT student.first_name, student.last_name, student.guardian from guardian
-- LEFT OUTER JOIN student on guardian.id = student.guardian
-- WHERE guardian.title = 'Mr' AND guardian.last_name = 'Beldum';
-- Who teaches Desiree Jeger Physics?

-- SELECT teacher.title, teacher.last_name, class.subject from teacher
-- LEFT OUTER JOIN class on class.teacher = teacher.id
-- LEFT OUTER JOIN student_class on student_class.class = class.id
-- LEFT OUTER JOIN student on student.id= student_class.student 
-- WHERE student.first_name = 'Desiree' AND student.last_name = 'Jeger' AND class.subject = 'Physics';

-- Who is in Selene Davis's (teacher) year 10 Chemistry Class?

-- SELECT student.first_name, student.last_name FROM teacher 
-- JOIN class on teacher.id = class.teacher
-- JOIN student_class on class.id = student_class.class
-- JOIN student on student_class.student = student.id
-- WHERE teacher.first_name = 'Selene' AND teacher.last_name = 'Davis' AND  class.year = 10;


-- Who got the best mark in Mr Polkinghorne's year 8 English class?
-- Which guardians don't have a corresponding student? Can you Delete them?
-- 5) Produce a 'report' for Mylo Sirmond detailing the subjects he is taking, who teaches them and what mark he got.
-- Extensions
-- 1) Which house has the most students?
-- 2) Which student is best at Maths?
-- 3) What is the most common first name of our students?
-- 3) Which student has the highest average mark?
-- 4) Which students have siblings (share a guardian with someone else)?
-- 5) which students have the most siblings?
-- SELECT COUNT(*) from student;
-- SELECT * from house;
-- SELECT start_year from student 
-- WHERE first_name = 'Lanie';





















-- INSERT INTO student_data(id, name, school_house, phone_number, contact_email, start_year) 
-- VALUES (3,'John', 'Mars', 01838596789, 'John@example.co.uk', 2021);
--  psql -U postgres my_database_name
-- SELECT * FROM student_data; 
--  psql -U postgres -d my_database_name -f script1.sql
-- SELECT * FROM my_new_table WHERE my_first_column > 17 LIMIT 10 OFFSET 30;
-- SELECT * FROM sample_students WHERE name LIKE 'M%'; -names starting with m 
--  SELECT * FROM sample_students WHERE email =  ''; - idenitfying students without emails
-- SELECT * FROM sample_students WHERE school_house = 'yellow' AND email = ''; - in yellow house and don't have email
--  SELECT * FROM sample_students ORDER BY name LIMIT 10; - find first 10 names alphabetically 
-- CREATE TABLE new_student_data(
--     id int primary key,
--     name varchar(255),
--     email varchar(127),
--     start_year int,
--     house_id varchar(127)
-- );