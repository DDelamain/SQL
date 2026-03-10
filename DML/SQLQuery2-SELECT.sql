--SQLQuery2-SELECT.sql
USE PV_522_Import;

--ALTER TABLE		Groups
--ALTER COLUMN	start_time	TIME(0) NOT NULL;

--SELECT 
--		group_name		AS N'Группа',
--		direction_name	AS N'Направление обучения',
--FROM	Groups, Directions
--WHERE	direction = direction_id
--;

--SELECT 
--    discipline_id AS N'Код дисциплины',
--    discipline_name AS N'Название дисциплины',
--    number_of_lessons AS N'Количество занятий'
--FROM Disciplines
--;

SELECT
		t.last_name AS N'Преподаватель',
		d.discipline_id AS N'Код дисциплины',
		d.discipline_name AS N'Название дисциплины'
FROM Teachers AS t
INNER JOIN TeachersDisciplinesRelation AS tdr ON t.teacher_id = tdr.teacher
INNER JOIN Disciplines AS d ON tdr.discipline = d.discipline_id
WHERE t.last_name = N'Ковтун';

SELECT 
    d.discipline_name AS N'Дисциплина',
    t.last_name + ' ' + t.first_name AS N'Преподаватель'
FROM Disciplines AS d
INNER JOIN TeachersDisciplinesRelation AS tdr ON d.discipline_id = tdr.discipline
INNER JOIN Teachers AS t ON tdr.teacher = t.teacher_id
WHERE d.discipline_name = N'Процедурное программирование на языке C++';
