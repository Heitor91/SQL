create table times(
id_team int auto_increment primary key,
nome varchar(255) not null,
sigla char(3),
tit_mundiais int default 0,
tit_continentais int default 0,
tit_nacionais int default 0,
tit_regionais int default 0
);

insert into times(nome, tit_mundiais, tit_continentais, tit_nacionais, tit_regionais) values
('Kashima',0,2,15,12),
('Chivas',1,5,26,40),
('Amazonas',0,0,3,30),
('Orlando',2,5,20,24),
('Lisbon',0,1,30,50),
('Madrid',8,12,42,79),
('Paris',0,0,35,62),
('Casablanca',0,5,34,49),
('Al Saab',0,1,6,10),
('Lokomotiv',0,2,16,43),
('Kashima',0,2,15,12),
('Bom Retiro',2,1,6,35),
('Aires',2,4,30,28),
('Milano',2,6,34,73),
('Toro',0,0,36,62),
('Munchen',2,3,45,105),
('London',0,1,40,36),
('Manchester',2,3,27,41),
('Amsterdam',0,2,31,15);

select nome, tit_mundiais, tit_continentais,
	case 
		when tit_mundiais > 0  then 'Campeão Mundial'
        when tit_continentais > 0 then 'Campeão Continental'
		else 'Campeão Nacional'
	end as Categoria
from times;

update times set sigla=substr(nome,1,3) where sigla=null;

#Método por subquery, mais lento por executar uma query dentro de outra
select * from times where tit_regionais = (select max(tit_regionais) from times);

#Método por ordenação
select * from times order by tit_regionais asc limit 1;
select * from times order by tit_regionais desc limit 1;

select count(*) from times where tit_mundiais > 0;

select avg(tit_nacionais) from times;

select * from times;

drop table times;