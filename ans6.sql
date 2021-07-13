-- 6.1)




-- 6.2) List all the employee names whose salary is greater than the lowest salary of an employee belonging to department 10
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    SALARY > ( 
    SELECT
        MIN(SALARY) 
    FROM
        EMP 
    WHERE
        DEPT_NO = 10);



-- 6.3) List the employee name whose salary is grater than the highest salary of an employee belonging to department 20
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    SALARY > ( 
    SELECT
        MAX(SALARY) 
    FROM
        EMP 
    WHERE
        DEPT_NO = 20);



-- 6.4) List the names of employees drawing the highest salary
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    SALARY = 
    (
        SELECT
            MAX(SALARY) 
        FROM
            EMP
    );



-- 6.5) List the employees whose salary is second highest in the comapny
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    SALARY = 
    (
        SELECT
            SALARY 
        FROM
            EMP 
        ORDER BY
            SALARY DESC LIMIT 1,1
    );



-- 6.6) List the employees who earn more than the avergae salary in their own department
SELECT
    EMP_NAME,
    SALARY 
FROM
    EMP AS E1 
WHERE
    SALARY > (
    SELECT
        AVG(SALARY) 
    FROM
        EMP AS E2 
    WHERE
        E2.DEPT_NO = E1.DEPT_NO);
