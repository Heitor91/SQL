-- a
select f.numero_func, f.nome_func, count(*) qtde
from aloc a
inner join func f on f.numero_func = a.numero_func
group by f.numero_func, f.nome_func
having qtde > 1;

-- b
select f.nome_func, f.salario_base_func, f.codigo_carg
from func f
inner join carg c on c.codigo_carg = f.codigo_carg
where c.tipo_contrato_carg in ('R', 'S');

-- c
select f.nome_func, f.data_admissao_func
from aloc a
inner join func f on f.numero_func = a.numero_func
where a.codigo_dpto = 'FIN';

-- d
select d.codigo_dpto, f.nome_func nome_gerente
from dpto d
left join func f on f.numero_func = d.numero_gerente;

-- e
select d.nome_dpto DEPARTAMENTO
from dpto d
where d.numero_gerente is null;

-- f
select c.codigo_carg, c.nome_carg, count(*) qtde
from carg c
inner join func f on f.codigo_carg = c.codigo_carg
group by c.codigo_carg, c.nome_carg;
