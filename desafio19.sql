USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_hired_employees INT;
SELECT
    COUNT(*)
FROM
    hr.employees
WHERE
    YEAR(hire_date) = ano AND MONTH(hire_date) = mes INTO total_hired_employees;
    RETURN total_hired_employees;
END $$

DELIMITER ;
SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987)
