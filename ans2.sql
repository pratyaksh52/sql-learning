-- 2.1) List the employee details in ascending order of salary
SELECT *
FROM EMP
ORDER BY SALARY ASC;


-- 2.2) List the names of employees in department 30 from Emp table in the descending order of their salary
SELECT EMP_NAME
FROM EMP
WHERE DEPT_NO = 30
ORDER BY SALARY DESC;


-- 2.3) List the employee names and hired date in the descending order of hire date.
SELECT EMP_NAME
FROM EMP
ORDER BY HIRE_DATE DESC;


-- 2.4) List the employee names which are not eligible for commission
SELECT EMP_NAME
FROM EMP
WHERE COMMISSION IS NULL;


-- 2.5) List the name of the employee and the job of the employee who does not report to anybody.
SELECT EMP_NAME
FROM EMP
WHERE MGR_ID IS NULL;


-- 2.6) List the employees not assigned to any department
SELECT EMP_NAME
FROM EMP
WHERE DEPT_NO IS NULL;


-- 2.7) List the details of employees, whose salary is greater than 2000 and commission is NULL
SELECT *
FROM EMP
WHERE SALARY > 2000
      AND COMMISSION IS NULL;


-- 2.8) List the employees whose names start with "S"
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "S%";


-- 2.9) List the employee names ending with ‘S’
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "%S";


-- 2.10) List the employees having third character as "R"
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "__r%";


-- 2.11) List the names of employees whose names have exactly five characters
-- Solution - 1
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "_____";

-- Solution - 2
SELECT EMP_NAME
FROM EMP
WHERE LENGTH(EMP_NAME)=5;
