SELECT * FROM cidades where uf = 'SP';

select * from cidades where nome_mun = 'Dourado' and uf = 'SP'

select * from cidades where populacao > 1000000

select * from cidades where populacao < 1000

select * from cidades where uf <> 'SP' and uf <> 'SC'

select * FROM cidades 
		where populacao >= 50000 
		  and populacao <= 100000
		  and uf = 'SP'
		  and nome_mun <> 'Vinhedo'