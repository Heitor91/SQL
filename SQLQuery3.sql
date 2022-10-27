use AdventureWorks2014

select p.FirstName,
	   p.LastName,
	   e.VacationHours,
	   e.SickLeaveHours,
	   e.VacationHours + e.SickLeaveHours as 'Leave Hours'
from HumanResources.employee as e
	join person.person as p
	on e.BusinessEntityID = p.BusinessEntityID
	order by 'Leave Hours' asc