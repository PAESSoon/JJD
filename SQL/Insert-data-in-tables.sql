/* Purpose: Inserting data in the tables in database KLF_JJD
Script Date: April 01, 2022
Developed by: PamelaEss
*/

use KLF_JJD
;
go

/************ insert data in Portal.user *****************/
insert into Portal.users
	(name)
	Values
	('Habibah'),
	('Regina'),
	('Skylar'),
	('Loren'),
	('Elowen'),
	('Inez'),
	('Shawn'),
	('Joey'),
	('David'),
	('Ralph'),
	('Lana'),
	('Super'),
	('Rachel'),
	('Jaqueline'),
	('John')
;
go

select *
from Portal.users
;
go

/************ insert data in Portal.activity *****************/
insert into Portal.activity
	(name)
	Values
	('login'),
	('view'),
	('buy')
;
go

select *
from Portal.activity
;
go

/************ insert data in Portal.user_activity *****************/
insert into Portal.user_activity
	(activity_id, user_id, occurrence)
	Values
	('1', '4', '2021-10-23 13:10:11'),
	('2', '5', '2021-09-30 13:10:11'),
	('3', '4', '2021-10-12 13:10:11'),
	('1', '10', '2021-11-20 13:10:11'),
	('2', '12', '2020-10-13 13:10:11'),
	('2', '6', '2021-10-10 13:10:11'),
	('2', '5', '2021-08-14 13:10:11'),
	('3', '7', '2021-10-25 13:10:11'),
	('1', '9', '2021-10-03 13:10:11'),
	('1', '10', '2021-10-01 13:10:11')

;
go

select *
from Portal.user_activity
;
go
