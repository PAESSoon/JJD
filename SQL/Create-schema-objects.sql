/* Purpose: Creating Schema Objects in the database KLF_JJD
Script Date: April 01, 2022
Developed by: PamelaEss
*/

use KLF_JJD
;
go -- includes end of the batch marker

select SCHEMA_NAME() as 'Default Schema'
;
go

-- create portal schema
create schema Portal authorization dbo
;
go