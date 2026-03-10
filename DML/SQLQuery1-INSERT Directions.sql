--SQLQuery1-INSERT Directions.sql
USE PV_522_DDL;

--INSERT Directions
--		(direction_id, direction_name)
--VALUES	(1,				N'Разработка программного обеспесения');
--INSERT Directions
--		(direction_id, direction_name)
--VALUES	(2,				N'Компьютерная графика и дизайн'),
--		(3,				N'Сетевые технологии и системное администрирование');
INSERT Directions
VALUES	(4,				N'Java Development'),
		(5,				N'C++ development'),
		(6,				N'Python Development'),
		(7,				N'GameDev'),
		(8,				N'Android Development'),
		(9,				N'.NET Development'),
		(10,				N'Web Development');
SELECT * FROM Directions;