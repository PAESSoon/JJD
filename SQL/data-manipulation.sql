/* Purpose: Manipulating Data in KLF_JJD
Script Date: April 01, 2022
Developed by: PamelaEss
*/

use KLF_JJD
;
go

select 
	PU.name as 'user_name',
	PA.name as 'activity_name',
	COUNT(PU.name) as 'amount',
	min(PUA.occurrence) as 'first_occurrence',
	max(PUA.occurrence) as 'last_occurrence'
from Portal.users as PU
	inner join Portal.user_activity as PUA
	on PU.id = PUA.user_id
	inner join Portal.activity as PA
	on PUA.activity_id = PA.id
where '2021-10-01' <= PUA.occurrence and PUA.occurrence <= '2021-11-01'
group by
	PU.name,
	PA.name
order by PU.name asc
;
go


