-- 5.1) List employee number, name, his department number and the department name
SELECT
    E.EMP_NO,
    E.EMP_NAME,
    E.DEPT_NO,
    D.DEPT_NAME 
FROM
    EMP AS E 
    INNER JOIN
        DEPT AS D 
        ON E.DEPT_NO = D.DEPT_NO;



-- 5.2) List employee name, his department name and the deprartment location
SELECT
    E.EMP_NAME,
    D.DEPT_NAME,
    D.LOC
FROM
    EMP AS E
    INNER JOIN
        DEPT AS D
        ON E.DEPT_NO = D.DEPT_NO;



-- 5.3) List employee name, department name for all the clerks in the company
SELECT
    E.EMP_NAME,
    D.DEPT_NAME 
FROM
    EMP AS E 
    INNER JOIN
        DEPT AS D 
        ON E.DEPT_NO = D.DEPT_NO 
WHERE
    JOB LIKE "CLERK";



-- 5.4) List employee number, name, job, his manager's name, his manager's job.
SELECT
    E1.EMP_NO,
    E1.EMP_NAME,
    E1.JOB,
    E2.EMP_NAME AS MGR_NAME,
    E2.JOB AS MGR_JOB 
FROM
    EMP AS E1 
    INNER JOIN
        EMP AS E2 
        ON E1.MGR_ID = E2.EMP_NO;



-- 5.5) Display differnt designations in department 20 and 30
SELECT DISTINCT
    JOB 
FROM
    EMP 
WHERE
    DEPT_NO IN (20, 30);



-- 5.6) List the jobs common to department 20 and 30
SELECT DISTINCT
    T1.JOB 
FROM
    (
        SELECT
            * 
        FROM
            EMP 
        WHERE
            DEPT_NO = 20
    )
    AS T1 
    INNER JOIN
        (
            SELECT
                * 
            FROM
                EMP 
            WHERE
                DEPT_NO = 30
        )
        AS T2 
        ON T1.JOB = T2.JOB;



-- 5.7) List the jobs unique to department 20
SELECT DISTINCT
    JOB 
FROM
    EMP 
WHERE
    DEPT_NO = 20 
    AND JOB NOT IN 
    (
        SELECT
            JOB 
        FROM
            EMP 
        WHERE
            DEPT_NO != 20
    )
;



-- 5.8) List the employees belonging to the department of "MILLER"
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    DEPT_NO = 
    (
        SELECT
            DEPT_NO 
        FROM
            EMP 
        WHERE
            EMP_NAME LIKE "MILLER" 
    )
    AND EMP_NAME NOT LIKE "MILLER";



-- 5.9) List all the employees who have the same job as "SCOTT"
SELECT
    EMP_NAME 
FROM
    EMP 
WHERE
    JOB = 
    (
        SELECT
            JOB 
        FROM
            EMP 
        WHERE
            EMP_NAME LIKE "SCOTT"
    )
    AND EMP_NAME NOT LIKE "SCOTT";



-- 5.10) Display names of the employees who are working in sales or research department
SELECT
    EMP_NAME 
FROM
    EMP NATURAL 
    JOIN
        DEPT 
WHERE
    DEPT_NAME IN ("SALES", "RESEARCH");



-- 5.11) Display naems and salary of employees working in chicago
SELECT
    E.EMP_NAME,
    E.SALARY 
FROM
    EMP AS E 
    INNER JOIN
        DEPT AS D 
        ON E.DEPT_NO = D.DEPT_NO 
WHERE
    D.LOC LIKE "CHICAGO";



-- 5.12) List the details of employees in department 10 who have the same job as in department 30
SELECT
    T1.* 
FROM
    (
        SELECT
            * 
        FROM
            EMP 
        WHERE
            DEPT_NO = 10
    )
    AS T1 
    INNER JOIN
        (
            SELECT
                * 
            FROM
                EMP 
            WHERE
                DEPT_NO = 30
        )
        AS T2 
        ON T1.JOB = T2.JOB;
