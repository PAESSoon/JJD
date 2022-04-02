/* Purpose: Creating table objects in the database KLF_JJD
Script Date: April 01, 2022
Developed by: PamelaEss
*/

use KLF_JJD
;
go

if OBJECT_ID('Portal.user', 'U') is not null
	drop table Portal.users
;
go

/***** Table No. 1 - user ****/
-- Primary Key: id
create table Portal.users
(
	id int identity(1,1) not null, 
	name nvarchar(40) not null,
	constraint pk_user primary key clustered (id asc)
)
;
go


if OBJECT_ID('Portal.activity', 'U') is not null
	drop table Portal.activity
;
go

/***** Table No. 2 - activity ****/
-- Primary Key: id
create table Portal.activity
(
	id int identity(1,1) not null, 
	name nvarchar(40) not null,
	constraint pk_activity primary key clustered (id asc)
)
;
go

if OBJECT_ID('Portal.user_activity', 'U') is not null
	drop table Portal.user_activity
;
go

/***** Table No. 3 - user_activity ****/

create table Portal.user_activity
(
	activity_id int, -- FK (id in activity)
	user_id int, -- FK (id in user)
	occurrence datetime
	constraint pk_activity_user primary key clustered 
	(
		activity_id asc,
		user_id asc,
		occurrence asc
	)
)
;
go
        
alter table Portal.user_activity
	add constraint fk_users_user_activity foreign key (user_id)
		references Portal.users (id)
;
go
		
alter table Portal.user_activity
	add constraint fk_activity_user_activity foreign key (activity_id)
		references Portal.activity (id)
;
go