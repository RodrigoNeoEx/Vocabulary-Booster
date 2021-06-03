USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT
    ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
FROM
    hr.employees AS emp
INNER JOIN
    hr.jobs AS jb ON emp.JOB_ID = jb.JOB_ID AND jb.JOB_TITLE = job_title;
END $$

DELIMITER ;
