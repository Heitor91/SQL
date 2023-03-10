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

create table clients(
id_client int auto_increment primary key,
firstname varchar(50),
lastname varchar(50),
middlename varchar(50),
bday date
);

create table buy_order(
id_order int auto_increment primary key,
qtd_item int,
total_value float,
cli_reference int default 0,
date_buy timestamp,
foreign key (cli_reference) references clients(id_client)
);

create table stock_order(
id_product int,
id_buy_order int,
id_client int,
foreign key (id_product) references products(id_produto),
foreign key (id_buy_order) references buy_order(id_order),
foreign key (id_client) references clients(id_client)
);

drop table stock_order;
drop table buy_order;
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

insert into clients(firstname, lastname, middlename, bday) values('João','','Andrade','1987-06-12');
insert into clients(firstname, lastname, middlename, bday) values('Andréia','','Pizzi','1992-02-19');
insert into clients(firstname, lastname, middlename, bday) values('Paulo Henrique','Loureiro','Amorim','1965-11-22');
insert into clients(firstname, lastname, middlename, bday) values('Victor','Santana','Frota','1988-02-07');
insert into clients(firstname, lastname, middlename, bday) values('Ana Paula','','Todisco','1986-10-04');
insert into clients(firstname, lastname, middlename, bday) values('Larissa','Souza','Brandão','1995-05-30');
insert into clients(firstname, lastname, middlename, bday) values('Gabriel Felipe','','Nascimento','1998-01-29');
insert into clients(firstname, lastname, middlename, bday) values('Enzo','Oliveira','Andrade','2000-12-20');
insert into clients(firstname, lastname, middlename, bday) values('Jhennyfer','da Silva','Chaves','2001-06-09');
insert into clients(firstname, lastname, middlename, bday) values('Mauro','Magalhães','Ribeiro','1973-07-14');
insert into clients(firstname, lastname, middlename, bday) values('Critina','','Rocha','1982-06-21');
insert into clients(firstname, lastname, middlename, bday) values('Bruno','','Monteiro','1988-05-10');


insert into stock_order(id_product, id_buy_order) values
(13,1), (2,1), (9,2), (20,1), (9,1), (5,3), (6,1), (19,2), (25,2),(10,2),(3,3),(10,1),(4,1),(12,3),(27,2);

insert into buy_order(cli_reference) values (1);
insert into buy_order(cli_reference) values (2);
insert into buy_order(cli_reference) values (3);
insert into buy_order(cli_reference) values (4);
insert into buy_order(cli_reference) values (5);
insert into buy_order(cli_reference) values (6);
insert into buy_order(cli_reference) values (7);
insert into buy_order(cli_reference) values (8);
insert into buy_order(cli_reference) values (9);
insert into buy_order(cli_reference) values (10);
insert into buy_order(cli_reference) values (11);
insert into buy_order(cli_reference) values (12);

#----------------------------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------------------------
# =========================================================Selects===================================================================================
select * from products;
select * from companies;
select * from clients;
select * from buy_order;
select * from stock_order;

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
# ================================================================Views==============================================================================
create view stock_now as
select products.n_produto as 'Item', companies.c_name as 'Fornecedor', products.qtd, concat('R$ ',(products.qtd * products.valor)) as 'Valor Faturado'
from companies inner join products on id_companie = id_fornecedor order by id_produto;

create or replace view stock_now as
select products.n_produto as 'Item', companies.c_name as 'Fornecedor', products.qtd, concat('R$ ',(products.qtd * products.valor)) as 'Valor Faturado'
from companies inner join products on id_companie = id_fornecedor order by id_produto;

alter view stock_now as
select products.n_produto as 'Item', companies.c_name as 'Fornecedor', products.qtd,
concat('R$ ',(products.qtd * products.valor)) as 'Valor Faturado' 
from companies inner join products on id_companie = id_fornecedor order by id_produto;

select * FROM stock_now;
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