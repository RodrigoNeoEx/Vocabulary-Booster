USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
    dp.department_name AS 'Departamento',
    jobT.job_title AS 'Cargo'
FROM
    hr.job_history AS jobH
        INNER JOIN
    hr.departments AS dp ON jobH.department_id = dp.department_id
        INNER JOIN
    hr.employees AS emp ON jobH.employee_id = emp.employee_id
        INNER JOIN
    hr.jobs AS jobT ON jobH.job_id = jobT.job_id
WHERE
    emp.email = email
ORDER BY 2, 3;
END $$

DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR')
