
# Left Join
#1
select c_name, sum(valor) as total  
from companies 
join products 
on companies.id_companie = products.id_fornecedor
group by id_fornecedor;

#1
select c_name, ifnull(sum(valor*qtd), 0) as total_liquidado
from companies 
left join products 
on companies.id_companie = products.id_fornecedor
group by id_companie;


# Right Join
#1



select * from companies
inner join products
on id_companie = id_fornecedor
order by id_produto;

select * from companies
right join products
on id_companie = id_fornecedor
order by id_produto;

select * from companies
left join products
on id_companie = id_fornecedor
order by id_produto;