-- 4.1) List the numbe rof employees working in the company
SELECT
    COUNT(EMP_NO) AS NUMBER_OF_EMPLOYEES 
FROM
    EMP;



-- 4.2) List the numbe rof jobs available in the company
SELECT
    COUNT(DISTINCT JOB) AS NUMBER_OF_JOBS 
FROM
    EMP;

----- OR -----
SELECT
    COUNT(JOB) AS NUMBER_OF_JOBS 
FROM
    (
        SELECT DISTINCT
            JOB 
        FROM
            EMP
    )
    AS SUB;



-- 4.3) List the total salaries payable to employees.
SELECT
    SUM(SALARY) AS TOTAL_PAYABLE 
FROM
    EMP;



-- 4.4) List maximum, minimum, average and sum of salary.
SELECT
    MIN(SALARY) AS MIN_SALARY,
    MAX(SALARY) AS MAX_SALARY,
    AVG(SALARY) AS AVG_SALARY,
    SUM(SALARY) AS SUM_SALARY 
FROM
    EMP;



-- 4.5) List the maximum salary and number of employees working as a salesman
SELECT
    MAX(SALARY) AS MAX_SALARY,
    COUNT(EMP_NO) AS NUMBER_OF_EMPLOYEES 
FROM
    EMP 
WHERE
    JOB LIKE "SALESMAN";



-- 4.6) List the average salary and the number of employees working in department 20
SELECT
    AVG(SALARY) AS AVG_SALARY,
    COUNT(EMP_NO) AS NUMBER_OF_EMPLOYEES 
FROM
    EMP 
WHERE
    DEPT_NO = 20;



-- 4.7) Count the number of people in department 30 who recieve a salary and the number of people who recieeve a commission
SELECT
    COUNT(SALARY) AS SALARY_COUNT,
    COUNT(COMMISSION) AS COMMISSION_COUNT 
FROM
    EMP 
WHERE
    DEPT_NO = 30;



-- 4.8) Compute the average, minimum and maximum salaries of those groups of employees having jobs of clerk or manager
SELECT
    JOB,
    AVG(SALARY) AS AVG_SALARY,
    MIN(SALARY) AS MIN_SALARY,
    MAX(SALARY) AS MAX_SALARY 
FROM
    EMP 
WHERE
    JOB IN 
    (
        "CLERK",
        "MANAGER"
    )
GROUP BY
    JOB;



-- 4.9) List the department number and the maximum salary earned in department 20
SELECT
    DEPT_NO,
    MAX(SALARY) 
FROM
    EMP 
WHERE
    DEPT_NO = 20;



-- 4.10) Find out the locations of the employees. Sort the list by location
SELECT
    E.EMP_NAME,
    D.LOC 
FROM
    EMP AS E NATURAL 
    JOIN
        DEPT AS D 
ORDER BY
    LOC;



-- 4.11) Find out the people whose salary is less than the average salary for department number 20
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    SALARY < 
    (
        SELECT
            AVG(SALARY) 
        FROM
            EMP 
        WHERE
            DEPT_NO = 20
    )
;



-- 4.12) List the names of people who are reporting to Blake
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    MGR_ID = 
    (
        SELECT
            EMP_NO 
        FROM
            EMP 
        WHERE
            EMP_NAME LIKE "BLAKE"
    )
;

-- USING JOIN
SELECT
    E1.EMP_NAME 
FROM
    EMP AS E1 
    INNER JOIN
        (
            SELECT
                * 
            FROM
                EMP 
            WHERE
                EMP_NAME LIKE "BLAKE"
        )
        AS E2 
        ON E1.MGR_ID = E2.EMP_NO;



-- 4.13) List employees who work in New York
SELECT
    E.EMP_NAME 
FROM
    EMP AS E 
    INNER JOIN
        DEPT AS D 
        ON E.DEPT_NO = D.DEPT_NO 
WHERE
    LOC LIKE "NEW YORK";



-- 4.13.1) How many employees work in Chicago?
SELECT
    COUNT(E.EMP_NO) AS NUMBER_OF_EMPLOYEES_IN_CHICAGO 
FROM
    EMP AS E 
    INNER JOIN
        DEPT AS D 
        ON E.DEPT_NO = D.DEPT_NO 
WHERE
    LOC LIKE "CHICAGO";



-- 4.14) Determine the average earning of an employee working in department 30
SELECT
    DEPT_NO,
    AVG(SALARY + COALESCE(COMMISSION, 0)) AS AVG_SAL_COMM 
FROM
    EMP 
WHERE
    DEPT_NO = 30 
GROUP BY
    DEPT_NO;



-- 4.15) Find out the total salary in each department. Display department number and total salary
SELECT
    DEPT_NO,
    SUM(SALARY)
FROM
    EMP
GROUP BY
    DEPT_NO;