use sistema_hospitalar;

select nome, estado from pacientes where estado = 'PR';

SELECT status FROM consulta where status <> 'Cancelada';

select nome from hospitais where estado = 'PR' AND tipo = 'Público';

select nome, estado from hospitais where estado = 'PR' OR estado = 'SC';

select nome, estado from hospitais where not estado = 'PR' AND estado = 'SC';

select nome, cidade, estado from hospitais;

select nome, tipo_sanguineo from pacientes;

select nome, preco, controlado from medicamentos;

select nome as 'Nome do hospital', capacidade_de_leitos as 'Leitos' from hospitais;

select nome as 'Medicamentos', preco as 'Preço' from medicamentos;

select distinct estado from hospitais;

select distinct tipo_sanguineo from pacientes;

select nome, salario from medicos order by salario desc;

select nome, salario from medicos order by salario asc;

select round(AVG(salario), 2) as salario_medio from medicos;

select round(AVG(valor), 2) as valor_medio from consultas;

select sum(salario) as folha_salarial from medicos;

select tipo as 'Tipo medicamentos', count(distinct fabricante), sum(preco) as soma_preco, round(avg(preco), 2) as media_precos from medicamentos where controlado = 0 group by tipo order by media_precos;

insert into hospitais (nome, cidade, estado, tipo, capacidade_de_leitos, telefone) values 


