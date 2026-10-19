DELIMITER //

CREATE PROCEDURE ProcessarFolhaPagamentoAtualizada ()
BEGIN
    UPDATE funcionarios
    SET 
        salario_bruto = valor_hora * horas_trabalhadas,
        descontos = (valor_hora * horas_trabalhadas * 0.11 * desconta_inss) + 
                    (valor_hora * horas_trabalhadas * 0.06 * desconta_vt) + 
                    (valor_hora * horas_trabalhadas * 0.04 * desconta_vr),
        salario_liquido = (valor_hora * horas_trabalhadas) - (
                          (valor_hora * horas_trabalhadas * 0.11 * desconta_inss) + 
                          (valor_hora * horas_trabalhadas * 0.06 * desconta_vt) + 
                          (valor_hora * horas_trabalhadas * 0.04 * desconta_vr)
        )
    WHERE salario_bruto IS NULL;
END //

DELIMITER ;