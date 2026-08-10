drop database loja;

create database loja;

use loja;

create table tipo_entrega
(
	id_tipo int auto_increment primary key,
    cod_entrega int unique not null,
    descricao_entrega varchar(50) not null
);

insert into tipo_entrega (cod_entrega, descricao_entrega)
values
(159357, 'Terrestre'),
(258456, 'Aérea'),
(357159, 'Marítima'),
(456258, 'Correios'),
(555333, 'Transportadora'),
(654987, 'Retirada no Local');

select * from tipo_entrega;


create table compras (
	id_compra int auto_increment primary key,
    produto varchar(100) not null,
    valor decimal(10,2) not null,
    cod_entrega int
);

alter table compras
add foreign key (cod_entrega)
references tipo_entrega(codigo_entrega);

INSERT INTO Compras (Produto, Valor, Cod_Entrega) 
VALUES
('Notebook Dell', 4500.00, 258456),
('Monitor LG 27pol', 1200.00, 159357),
('Mouse Logitech', 150.00, 456258),
('Servidor HP', 18000.00, 555333),
('Cadeira Gamer', 1100.00, 159357),
('Mesa de Escritório', 1500.00, 159357),
('Cabo de Rede 10m', 45.00, 456258),
('Case HD externol', 45.00, 258456),
('Smartphone Samsung', 3200.00, 258456),
('SSD M2  480gb', 540.00, 159357);

insert into compras (produto, valor)
values
('Webcam HD', 280.00),
('Cabo HDMI', 60.00),
('Teclado Mecânico', 350.00);

select * from compras;

select compras.produto, compras.valor,
	   tipo_entrega.descricao_entrega
from compras
inner join tipo_entrega
on compras.cod_entrega = tipo_entrega.cod_entrega;


select compras.produto, compras.valor,
	   tipo_entrega.descricao_entrega
from compras
right join tipo_entrega
on compras.cod_entrega = tipo_entrega.cod_entrega;

select compras.produto, compras.valor,
	   tipo_entrega.descricao_entrega
from compras
inner join tipo_entrega
on compras.cod_entrega = tipo_entrega.cod_entrega
union
select compras.produto, compras.valor,
	   tipo_entrega.descricao_entrega
from compras
right join tipo_entrega
on compras.cod_entrega = tipo_entrega.cod_entrega;





