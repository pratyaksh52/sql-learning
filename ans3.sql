-- 3.1) List the depaprtment numbers and the number of employees in each department
SELECT DEPT_NO,
    COUNT(EMP_NO)
FROM EMP
GROUP BY DEPT_NO;


-- 3.2) List the department number and total salary payable to each department
SELECT DEPT_NO,
    SUM(SALARY)
FROM EMP
GROUP BY DEPT_NO;


-- 3.3) List the jobs and the number of employees in each job. The result should be in the descending order of the number of jobs.
SELECT JOB,
    COUNT(EMP_NO)
FROM EMP
GROUP BY JOB
ORDER BY COUNT(EMP_NAME);


-- 3.4) List the job-wise total salary, average salary and minimum salary of employees
SELECT JOB,
    SUM(SALARY),
    AVG(SALARY),
    MIN(SALARY)
FROM EMP
GROUP BY JOB;


-- 3.5) List the total salary of employees job-wise for department 20 only
SELECT JOB,
    SUM(SALARY)
FROM EMP
WHERE DEPT_NO = 20
GROUP BY JOB;


-- 3.6) Find out the total salary in each department. Display the department number and the total salary
SELECT DEPT_NO,
    SUM(SALARY)
FROM EMP
GROUP BY DEPT_NO;


-- 3.7) FIND OUT MAXIMUM SALARIES DEPARTMENT WISE EXCLUDING THOSE WHO ARE HAVING SALARIES LESS THAN 3000.
SELECT DEPT_NO,
    MAX(SALARY)
FROM EMP
GROUP BY DEPT_NO
HAVING MAX(SALARY) > 3000;


-- 3.8) List the job-wise total salary and average salary of employees of department number 20 and display only those rows having salary greater than 1000
SELECT JOB,
    SUM(SALARY),
    AVG(SALARY)
FROM EMP
WHERE DEPT_NO = 20
    AND SALARY > 1000
GROUP BY JOB;