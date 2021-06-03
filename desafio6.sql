SELECT
    CONCAT(n.FIRST_NAME, ' ', n.LAST_NAME) AS 'Nome completo',
    c.JOB_TITLE AS 'Cargo',
    DATE(dt.START_DATE) AS 'Data de início do cargo',
    dn.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.job_history AS dt
        INNER JOIN
    hr.employees AS n ON dt.EMPLOYEE_ID = n.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS c ON dt.JOB_ID = c.JOB_ID
        INNER JOIN
    hr.departments AS dn ON dt.DEPARTMENT_ID = dn.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
