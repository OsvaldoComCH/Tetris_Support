/*
Create Table TesteTempo
(
	ID int Primary Key Identity,
	Nivel tinyint Not NULL,
	Linhas tinyint Not NULL,
	Peca tinyint Not NULL,
	Tempo Time Not NULL
)
*/

Select 
Nivel,
Sum(Tempo)/Count(Tempo) as 'Media'
From (
	Select 
	Cast(DATEDIFF(ms, Min(Tempo), Max(Tempo)) as float)/IIF((Sum(Linhas)-1) < 1, 1, (Sum(Linhas)-1)) as Tempo, 
	Nivel 
	From TesteTempo 
	Group By Peca, Nivel
) as Sub
Group By Nivel
