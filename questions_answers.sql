--Realice un query que obtenga los estudiantes que no tienen ninguna calificacion
-- Ejemplo salida deseada:
-- |student_no	|surname	|
-- |20060107	|Megan		|

select distinct s.sid student_no, s.name surname
from students as s
left join grades as g on s.sid = g.studentID
where g.studentid is null; -- To include students that has at least one module without grade use instead: g.grade is null;


-- Realice un query que obtenga la mejor calificación de cada estudiante y la materia en que el estudiante sacó esa calificación
-- Ejemplo salida deseada:
-- |student_no	|module_name				|mark		|
-- |20060101	|Databases				|80		|
-- |20060102	|Databases				|75		|
-- |20060103	|Programming Languages			|75		|

select s.name student_no, m.name module_name, grade mark
from (
  select g.studentid, g.subjectid, grade, row_number() over (partition by g.studentid order by g.grade desc) as grade_ranking
  from grades as g
) as wf
left join students as s on wf.studentid = s.sid
Left join modules as m on wf.subjectid = m.subid
where wf.grade_ranking = 1;
