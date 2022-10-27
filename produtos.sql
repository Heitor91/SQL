# ---------------------------------------------------------------------------------------------------------------------------------------------------
# =================================================Manegement DataBase===============================================================================
create database mercado;
use mercado;
show tables;

drop database mercado;
#----------------------------------------------------------------------------------------------------------------------------------------------------


#----------------------------------------------------------------------------------------------------------------------------------------------------
# ==================================================== Add Tables em columns ========================================================================
create table companies(
id_companie int auto_increment primary key,
c_name varchar(255),
c_active bit not null default 1
);

create table products(
id_produto int auto_increment primary key,
n_produto varchar(100),
id_fornecedor int,
qtd int,
valor decimal(10,2),
data_compra date,
data_faturamento date,
log_data timestamp,
foreign key(id_fornecedor) references companies(id_companie)
);

#----------------------------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------------------------
# =========================================================Insert Data===============================================================================
insert into products(n_produto, qtd, valor, data_compra) values
('Trufa Artesanal', 500, 3, '2022-08-03');

insert into companies (c_name, c_active) values
('Coca-Cola',1),
('Mondelez',1),
('Prats',0),
('PEPSICO',true),
('Tirolez',true),
('JBS',true),
('Brasil Foods',true),
('AMBEV',true),
('Adria',true);

insert into products(n_produto, id_fornecedor, qtd, valor, data_compra) values 
('Coca-Cola 350ml', 1, 2000, 4.50, '2022-10-26'),
('Coca-Cola 2L', 1, 250, 12.00, '2022-09-16'),
('Coca-Cola Zero 350ml', 1, 1500, 4.50, '2022-10-22'),
('Coca-Cola Zero 2L', 1, 250, 13.00, '2022-10-05'),
('Tang', 2, 600, 2.75, '2022-10-16'),
('Suco de Laranja 1.5L', 3, 50, 23, '2022-09-18'),
('Peito de Frango', 7, 500, 20.20, '2022-10-02'),
('Original 350ml', 8, 2000, 7.5, '2022-09-30'),
('Heineken 350ml', 8, 1000, 8.5, '2022-09-30'),
('Queijo Mussarela 1kg', 5, 200, 15.30, '2022-10-18'),
('Rufles 200g', 4, 400, 3.75, '2022-10-20'),
('Guaraná Antartica 2L', 4, 250, 8.5, '2022-10-20'),
('Picanha 1kg', 6, 150, 95.60, '2022-10-05'),
('Trakinas Morango', 2, 600, 4.80, '2022-09-04'),
('Linguiça na Brasa 800g', 7, 800, 15.20, '2022-10-02'),
('Pernil 1kg', 7, 500, 22.50, '2022-10-02'),
('Peito de Frango', 7, 500, 20.20, '2022-10-02'),
('Contrá Filé 1kg', 6, 450, 56.60, '2022-10-05'),
('Alcatra 1kg', 6, 300, 32.20, '2022-10-05'),
('Filé Mignon 1kg', 6, 100, 105.30, '2022-10-05'),
('Paleta 1kg', 6, 250, 45.60, '2022-10-05'),
('Guaraná Antartica 350L', 4, 1000, 4.5, '2022-10-20'),
('Pepsi 2L', 4, 250, 8.5, '2022-10-20'),
('Soda Antartica 2L', 4, 250, 8.5, '2022-10-20'),
('Trakinas Chocolate', 2, 600, 4.80, '2022-09-04'),
('Bis', 2, 800, 5.20, '2022-09-04');
#----------------------------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------------------------
# =========================================================Selects===================================================================================
select * from products;
select * from companies;

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
#----------------------------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------------------------
select * from products;
select * from companies;
drop table products;
drop table companies;

delete from companies;


#Cross Join
select * from companies, products;

#Inner Join Implícito
# 1
select * from companies, products where companies.id_companie = products.id_fornecedor;
# 2
select * from companies, products where companies.id_companie = products.id_fornecedor order by products.id_produto;
# 3
select n_produto, c_name, valor, data_compra, qtd
from companies, products
where companies.id_companie = products.id_fornecedor
order by products.id_produto;

# Inner Join Explícito
# 1
select * from companies join products on companies.id_companie = products.id_fornecedor;
# 2
select * from companies join products on companies.id_companie = products.id_fornecedor order by products.id_produto;
# 3
select n_produto, c_name, valor, data_compra, qtd from companies
join products 
	on companies.id_companie = products.id_fornecedor 
    order by products.id_produto;