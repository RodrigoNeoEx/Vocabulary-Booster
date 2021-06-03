USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE employees_total INT;
SELECT
    COUNT(*)
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS job ON emp.employee_id = job.employee_id
WHERE
    emp.email = email INTO employees_total;
    RETURN employees_total;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')
