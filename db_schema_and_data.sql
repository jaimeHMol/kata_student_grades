DROP TABLE IF EXISTS students;
CREATE TABLE students(
   sid  int  not null, 
   name text not null
);

DROP TABLE IF EXISTS modules;
CREATE TABLE modules(
   subid int  not null,
   name  text not null
);

DROP TABLE IF EXISTS grades;
CREATE TABLE grades(
  studentID int not null,
  teacherID int not null,
  subjectID int not null,
  grade int(1)
);

INSERT INTO students (sid, name) VALUES(1, 'Simon');
INSERT INTO students (sid, name) VALUES(2, 'Alvin');
INSERT INTO students (sid, name) VALUES(3, 'Theo');
INSERT INTO students (sid, name) VALUES(4, 'Brittany');
INSERT INTO students (sid, name) VALUES(5, 'Jenette');
INSERT INTO students (sid, name) VALUES(6, 'Elenor');
INSERT INTO students (sid, name) VALUES(7, 'Stu');

INSERT INTO modules (subid, name) VALUES (1, 'History');
INSERT INTO modules (subid, name) VALUES (2, 'Biology');
INSERT INTO modules (subid, name) VALUES (3, 'SF');

INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (1, 2, 1, 5);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (1, 2, 2, 3);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (7, 4, 3, 3);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (7, 3, 2, 4);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (6, 2, 1, 1);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (2, 4, 3, 4);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (3, 4, 3, 3);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (6, 4, 3, 0);
INSERT INTO grades (studentID, teacherID, subjectID, grade) VALUES (7, 3, 1, null);
