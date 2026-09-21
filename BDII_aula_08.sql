create database viagens;

use viagens;

create table clientes (
	id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    categoria_fidelidade varchar(20) not null,
    saldo_atual_milhas int default 0
);

create table voos_realizados (
	id_voo int auto_increment primary key,
    id_cliente int not null,
    trecho varchar (50) not null,
    distancia_km int not null,
    data_voo date not null,
    status_voo varchar(20) not null,
    foreign key (id_cliente) references Clientes(id_cliente)
);

create table historico_resgates (
	id_resgate int auto_increment primary key,
    id_cliente int not null,
    quantidade_milhas int not null,
    tipo_operacao varchar(50) not null,
    data_operacao timestamp default current_timestamp, 
    foreign key (id_cliente) references Clientes(id_cliente)
);

DELIMITER //

CREATE TRIGGER Gatilho_Credito_Pos_Voo
AFTER UPDATE ON voos_Realizados
FOR EACH ROW
BEGIN
    DECLARE v_multiplicador INT;
    DECLARE v_categoria VARCHAR(20);

    IF NEW.status_voo = 'Concluído' AND OLD.status_voo != 'Concluído' THEN
        SELECT categoria_fidelidade INTO v_categoria
        FROM Clientes
        WHERE id_cliente = NEW.id_cliente;

        SET v_multiplicador = 1;
        IF v_categoria = 'Ouro' THEN
            SET v_multiplicador = 2;
        ELSEIF v_categoria = 'Diamante' THEN
            SET v_multiplicador = 3;
        END IF;

        UPDATE Clientes
        SET saldo_atual_milhas = saldo_atual_milhas + (NEW.distancia_km * v_multiplicador)
        WHERE id_cliente = NEW.id_cliente;
    END IF;
END //

DELIMITER ;

insert into clientes  (nome, email, categoria_fidelidade, saldo_atual_milhas) 
VALUES
('Jorge Cardoso', 'jorge@email.com', 'Diamante', 150000),
('Ana Souza', 'ana@email.com', 'Ouro', 45000),
('Carlos Silva', 'carlos@email.com', 'Básico', 12000),
('Beatriz Lima', 'beatriz@email.com', 'Diamante', 320000),
('Fernanda Costa', 'fernanda@email.com', 'Ouro', 85000);

select * from clientes;

insert into voos_realizados  (id_cliente, trecho, distancia_km, data_voo, status_voo) VALUES
(1, 'POA - MCO', 7200, '2026-08-10', 'Concluído'),
(1, 'MCO - POA', 7200, '2026-08-25', 'Agendado'),
(2, 'GRU - LIS', 7900, '2026-09-12', 'Agendado'),
(3, 'CGH - SDU', 400, '2026-07-20', 'Concluído'),
(4, 'VCP - FLL', 6800, '2026-10-05', 'Agendado'),
(5, 'BSB - CNF', 600, '2026-08-01', 'Cancelado');

select * from voos_realizados;

update voos_realizados
set status_voo = "Concluido"
where id_cliente = 2;

insert into historico_resgates (id_cliente, quantidade_milhas, tipo_operacao, data_operacao)
values (5, 3500, 'Venda Hotmilhas', NOW());


call processar_resgate_milhas ()