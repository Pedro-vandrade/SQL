create database ecommerce2;

use ecommerce2;

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100) NOT NULL,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Pendente',
    data_criado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_alterado TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

CREATE TABLE Entregas (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    entregador VARCHAR(100) DEFAULT NULL,
    status_entrega VARCHAR(30) DEFAULT 'Aguardando Coleta',
    data_criado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_alterado TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    CONSTRAINT FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

select * from Pedidos;
select * from Entregas;


CREATE TABLE Historico_Rastreamento (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_entrega INT NOT NULL,
    status_registrado VARCHAR(30) NOT NULL,
    data_criado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_alterado TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    CONSTRAINT FOREIGN KEY (id_entrega) REFERENCES Entregas(id_entrega)
);

INSERT INTO Pedidos (cliente, produto, valor, status) VALUES
('Ana Souza', 'Notebook Gamer', 4500.00, 'Pendente'),
('Carlos Oliveira', 'Smartphone 128GB', 2200.00, 'Pendente'),
('Mariana Costa', 'Monitor 27 IPS', 1300.00, 'Pendente'),
('Roberto Santos', 'Teclado Mecânico RGB', 350.00, 'Pendente'),
('Fernanda Lima', 'Fone de Ouvido Bluetooth', 250.00, 'Pendente'),
('Lucas Pereira', 'Cadeira Ergonômica', 980.00, 'Pendente'),
('Beatriz Rocha', 'Mouse Sem Fio', 120.00, 'Pendente'),
('Gabriel Martins', 'Tablet 10 Polegadas', 1800.00, 'Pendente'),
('Juliana Alves', 'HD Externo 2TB', 420.00, 'Pendente'),
('Paulo Mendes', 'WebCam Full HD', 290.00, 'Pendente');

-- Tarefa 1 -  trigger de geração de entrega  - TR_criar_entrega

DELIMITER //
CREATE TRIGGER TR_CRIAR_ENTREGA
AFTER UPDATE ON Pedidos
FOR EACH ROW
BEGIN
	
    IF NEW.status = 'Aprovado' and OLD.status <> 'Aprovado' THEN
		INSERT INTO Entregas (id_pedido)
        VALUE (new.id_pedido);
	END IF;
END //

-- inserindo em pedidos para atualizar Entregas
insert into Pedidos (cliente, produto, valor, status) values
('Ana Souza', 'Notebook Gamer', 460.00, 'Aprovado');

select * from Entregas;


-- Tarefa 2 - Stored Procedure de Despacho (PR_Despachar_Entrega)

create procedure PR_Despachar_Entrega (
	IN P_ID_ENTREAGA int,
    IN P_ENTREGADOR VARCHAR(100)
)

BEGIN
	UPDATE Entregas
    SET status_entrega = 'Em Trânsito',
        entregador = p_entregador
    WHERE id_entrega = p_id_entrega;
END //

DELIMITER ;

call PR_Despachar_Entrega (1, 'felix'  );


-- Tarefa 3

DELIMITER //

CREATE TRIGGER TR_Atualizar_Status_Pedido
AFTER UPDATE ON Entregas
FOR EACH ROW
BEGIN
    IF NEW.status_entrega = 'Entregue' AND OLD.status_entrega <> 'Entregue' THEN
        UPDATE Pedidos 
        SET status = 'Concluído'
        WHERE id_pedido = NEW.id_pedido;
    END IF;
END //

DELIMITER ;

INSERT INTO Pedidos (cliente, produto, valor, status) 
VALUES ('Ana Souza', 'Teclado Mecânico', 350.00, 'Pendente');

UPDATE Pedidos 
SET status = 'Aprovado' 
WHERE id_pedido = 1;

SELECT * FROM Entregas WHERE id_pedido = 1;


CALL PR_Despachar_Entrega(1, 'Carlos Silva');

SELECT * FROM Entregas WHERE id_entrega = 1;

SELECT * FROM Historico_Rastreamento;


UPDATE Entregas 
SET status_entrega = 'Entregue' 
WHERE id_entrega = 1;

SELECT * FROM Historico_Rastreamento;

SELECT * FROM Pedidos WHERE id_pedido = 1;






