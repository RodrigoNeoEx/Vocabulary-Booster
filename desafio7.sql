SELECT
    UCASE(CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME)) AS 'Nome completo',
    DATE(dt.START_DATE) AS 'Data de início',
    n.SALARY AS 'Salário'
FROM
hr.job_history AS dt
        INNER JOIN
    hr.employees AS n ON dt.EMPLOYEE_ID = n.EMPLOYEE_ID
WHERE MONTH(dt.START_DATE) <= 3
ORDER BY 1, 2;
