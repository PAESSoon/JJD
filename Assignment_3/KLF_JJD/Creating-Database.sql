/* Purpose: Creating the database KLF_JJD
Script Date: April 01, 2022
Developed by: PamelaEss
*/

use master
;
go

create database KLF_JJD
on primary
(
	name = 'KLF_JJD',
	size = 12MB,
	filegrowth = 8MB,
	maxsize = 500MB,
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KLF_JJD.mdf'
)
log on
(
	name = 'West_Municipal_Library_log',
	size = 3MB,
	filegrowth = 10%,
	maxsize = 25MB,
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KLF_JJD_log.ldf'
)
;
go