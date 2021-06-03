SELECT
CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',

DATE_FORMAT(job.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(job.end_date, '%d/%m/%Y') AS 'Data de rescisão',

ROUND(DATEDIFF(job.end_date, job.start_date) / 365, 2) AS 'Anos trabalhados'

FROM hr.employees AS emp

INNER JOIN hr.job_history as job ON emp.employee_id = job.employee_id
ORDER BY 1, 4;
