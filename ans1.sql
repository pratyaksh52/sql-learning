-- 1.1) List all the information about employees in the EMP table.
SELECT *
FROM EMP;


-- 1.2) List all the information about departments in the DEPT table.
SELECT *
FROM DEPT;


-- 1.3) List the employee number, name, job title and hired date of employees in department 10.
SELECT EMP_NO,
       EMP_NAME,
       JOB,
       HIRE_DATE
FROM EMP
WHERE DEPT_NO = 10;


-- 1.4) Select name and salary of employees who are clerks.
SELECT EMP_NAME,
       SALARY
FROM EMP
WHERE JOB LIKE "Clerk";


-- 1.5) List department number and name for all departments with department numbers greater than or equal to 20
SELECT DEPT_NO,
       DEPT_NAME
FROM DEPT
WHERE DEPT_NO >= 20;


-- 1.6) List name of employees having salary less than 2500
SELECT EMP_NAME
FROM EMP
WHERE SALARY < 2500;


-- 1.7) Select name, salary and commission of employees whose commission is freater than their salary.
SELECT EMP_NAME,
       SALARY,
       COMMISSION
FROM EMP
WHERE COMMISSION > SALARY;


-- 1.8) List the employee number and name of the President
SELECT EMP_NO,
       EMP_NAME
FROM EMP
WHERE JOB LIKE "PRESIDENT";


-- 1.9) List the employees who do not get commission.
SELECT EMP_NAME
FROM EMP
WHERE COMMISSION IS NULL;


-- 1.10) List all employees in department number 10 except King
SELECT EMP_NAME
FROM EMP
WHERE DEPT_NO = 10
      AND EMP_NAME NOT LIKE "King";


-- 1.11) Display names of the employees whose job is either Analyst or Clerk
SELECT EMP_NAME
FROM EMP
WHERE JOB LIKE "Analyst"
      OR JOB LIKE "Clerk";


-- 1.12) Display different kinds of job available
SELECT DISTINCT
    JOB
FROM EMP;


-- 1.13) List names of all employees whose names are 4 characters long
-- Solution - 1
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "____";

-- Solution - 2 (performs better because we are using an in-built function)
SELECT EMP_NAME
FROM EMP
WHERE LENGTH(EMP_NAME)=4


-- 1.14) List names of all employees whose names end with letter "R"
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "%r";


-- 1.15) List names of all employees whose names starts from "B" or "M"
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME LIKE "B%"
      OR EMP_NAME LIKE "M%";


-- 1.16) Select all employees whose names fall between "A" and "G" alphabetical range
SELECT EMP_NAME
FROM EMP
WHERE EMP_NAME
BETWEEN "A" AND "G";