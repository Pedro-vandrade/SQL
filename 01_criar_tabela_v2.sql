CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    valor_hora DECIMAL(10,2) NOT NULL,
    horas_trabalhadas INT NOT NULL,
    desconta_inss TINYINT NOT NULL DEFAULT 1,
    desconta_vt TINYINT NOT NULL DEFAULT 1,
    desconta_vr TINYINT NOT NULL DEFAULT 1
);


ALTER TABLE funcionarios 
ADD COLUMN salario_bruto DECIMAL(10,2), 
ADD COLUMN descontos DECIMAL(10,2), 
ADD COLUMN salario_liquido DECIMAL(10,2);


