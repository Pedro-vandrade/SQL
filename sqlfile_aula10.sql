use barbearia;

select * from clientes;

insert into clientes(nome, fone, cpf, email)
values('José da silva' , '(51) 98407-4070', '123.456.789-00','jsilva@gmail.com');

update clientes
set fone = '(51) 98409-4120'
where id_cliente = 1;

delete from clientes where id_cliente = 1;


select * from usuarios;

update usuarios set senha = '4455' where id_usuario = 1;


insert into agendamentos (id_cliente, tipo_servico_, dia_agendamento, hora_agendanmento)
values(1, 'barba e cabelo', '2026-10-19', '14:00');