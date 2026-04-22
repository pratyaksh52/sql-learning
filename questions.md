# SQL Practice Questions

---

## Table Structure

### EMP Table (Structure)

| NAME     | NULL     | TYPE         |
|----------|----------|--------------|
| EMPNO    | NOT NULL | NUMBER(4)    |
| ENAME    |          | VARCHAR2(10) |
| JOB      |          | VARCHAR2(9)  |
| MGR      |          | NUMBER(4)    |
| HIREDATE |          | DATE         |
| SAL      |          | NUMBER(7,2)  |
| COMM     |          | NUMBER(7,2)  |
| DEPTNO   |          | NUMBER(2)    |


### DEPT Table (Structure)

| NAME   | NULL | TYPE          |
|--------|------|---------------|
| DEPTNO |      | NUMBER(2)     |
| DNAME  |      | VARCHAR2(14)  |
| LOC    |      | VARCHAR2(13)  |


### EMP Table (Data)

| EMP_NO | EMP_NAME | JOB       | MGR_ID | HIRE_DATE  | SALARY | COMMISSION | DEPT_NO |
|--------|----------|-----------|--------|------------|--------|------------|---------|
| 7369   | SMITH    | CLERK     | 7902   | 1980-12-17 | 800    | NULL       | 20      |
| 7499   | ALLEN    | SALESMAN  | 7698   | 1981-02-20 | 1600   | 300        | 30      |
| 7521   | WARD     | SALESMAN  | 7698   | 1981-02-22 | 1250   | 500        | 30      |
| 7566   | JONES    | MANAGER   | 7839   | 1981-04-02 | 2975   | NULL       | 20      |
| 7654   | MARTIN   | SALESMAN  | 7698   | 1981-09-28 | 1250   | 1400       | 30      |
| 7698   | BLAKE    | MANAGER   | 7839   | 1981-05-01 | 2850   | NULL       | 30      |
| 7782   | CLARK    | MANAGER   | 7839   | 1981-06-09 | 2450   | NULL       | 10      |
| 7788   | SCOTT    | ANALYST   | 7839   | 1982-12-09 | 3000   | NULL       | 20      |
| 7839   | KING     | PRESIDENT | NULL   | 1981-11-17 | 5000   | NULL       | 10      |
| 7844   | TURNER   | SALESMAN  | 7698   | 1981-09-08 | 1500   | 0          | 30      |
| 7876   | ADAMS    | CLERK     | 7788   | 1983-01-12 | 1100   | NULL       | 20      |
| 7900   | JAMES    | CLERK     | 7698   | 1981-12-03 | 950    | NULL       | 30      |
| 7902   | FORD     | ANALYST   | 7566   | 1981-12-03 | 3000   | NULL       | 20      |
| 7934   | MILLER   | CLERK     | 7782   | 1982-01-23 | 1300   | NULL       | 10      |


### DEPT Table (Data)

| DEPT_NO | DEPT_NAME | LOC       |
|---------|-----------|-----------|
| 10      | Accounting| New York  |
| 20      | Research  | Dallas    |
| 30      | Sales     | Chicago   |
| 40      | Operations| Boston    |

---

## Section 1
1. List all the information about employees in the EMP table.
2. List all the information about departments in the DEPT table.
3. List the employee number, name, job title and hired date of employees in department 10.
4. Select name and salary of employees who are clerks.
5. List department number and name for all departments with department numbers greater than or equal to 20
6. List name of employees having salary less than 2500
7. Select name, salary and commission of employees whose commission is freater than their salary.
8. List the employee number and name of the President
9. List the employees who do not get commission.
10. List all employees in department number 10 except King
11. Display names of the employees whose job is either Analyst or Clerk
12. Display different kinds of job available
13. List names of all employees whose names are 4 characters long
14. List names of all employees whose names end with letter "R"
15. List names of all employees whose names starts from "B" or "M"
16. Select all employees whose names fall between "A" and "G" alphabetical range

## Section 2
1. List the employee details in ascending order of salary
2. List the names of employees in department 30 from Emp table in the descending order of their salary
3. List the employee names and hired date in the descending order of hire date.
4. List the employee names which are not eligible for commission
5. List the name of the employee and the job of the employee who does not report to anybody.
6. List the employees not assigned to any department
7. List the details of employees, whose salary is greater than 2000 and commission is NULL
8. List the employees whose names start with "S"
9. List the employee names ending with ‘S’
10. List the employees having third character as "R"
11. List the names of employees whose names have exactly five characters

## Section 3
1. List the depaprtment numbers and the number of employees in each department
2. List the department number and total salary payable to each department
3. List the jobs and the number of employees in each job. The result should be in the descending order of the number of jobs.
4. List the job-wise total salary, average salary and minimum salary of employees
5. List the total salary of employees job-wise for department 20 only
6. Find out the total salary in each department. Display the department number and the total salary
7. FIND OUT MAXIMUM SALARIES DEPARTMENT WISE EXCLUDING THOSE WHO ARE HAVING SALARIES LESS THAN 3000.
8. List the job-wise total salary and average salary of employees of department number 20 and display only those rows having salary greater than 1000

## Section 4
1. List the number of employees working in the company
2. List the number of jobs available in the company
3. List the total salaries payable to employees.
4. List maximum, minimum, average and sum of salary.
5. List the maximum salary and number of employees working as a salesman
6. List the average salary and the number of employees working in department 20
7. Count the number of people in department 30 who recieve a salary and the number of people who recieeve a commission
8. Compute the average, minimum and maximum salaries of those groups of employees having jobs of clerk or manager
9. List the department number and the maximum salary earned in department 20
10) Find out the locations of the employees. Sort the list by location
11) Find out the people whose salary is less than the average salary for department number 20
12) List the names of people who are reporting to Blake
13) List employees who work in New York
14) Determine the average earning of an employee working in department 30
15) Find out the total salary in each department. Display department number and total salary

## Section 5
1. List employee number, name, his department number and the department name
2. List employee name, his department name and the deprartment location
3. List employee name, department name for all the clerks in the company
4. List employee number, name, job, his manager's name, his manager's job.
5. Display differnt designations in department 20 and 30
6. List the jobs common to department 20 and 30
7. List the jobs unique to department 20
8. List the employees belonging to the department of "MILLER"
9. List all the employees who have the same job as "SCOTT"
10) Display names of the employees who are working in sales or research department
11) Display naems and salary of employees working in chicago
12) List the details of employees in department 10 who have the same job as in department 30

## Section 6
1. List all the employee names whose salary is greater than the lowest salary of an employee belonging to department 10
2. List the employee name whose salary is grater than the highest salary of an employee belonging to department 20
3. List the names of employees drawing the highest salary
4. List the employees whose salary is second highest in the comapny
5. List the employees who earn more than the avergae salary in their own department

## Section 7
1. Add a constraint to the EMP table to ensure that the salary is always in the range 3000 to 10000.
2. Modify the definition of an employee table by adding two columns employee address and his contact number. Use appropriate data type and size.
3. Create a table INCREMENT to store the increment details of an employee. This table stores the employee number, the date of increment and the amount of increment.
4. Create a table BONUS to store the bonus details of an employee. This table stores the employee number, the date of bonus and the bonus amount.
5. Insert a new employee with the following details

    Employee number: 7987

    Employee name: ‘BILL’

    Salary: 2500

    Department number: 30

6. Raise the salary of all the salesman by 10%
7. Delete the details of all the employees whose salary is less than 1000.
8. List employees and his manager’s details, where that employee’s salary is greater than his manager’s salary.

## Section 8
1. Create a PL/SQL program that accepts a number less than 10:
    - If the number is less than 5, compute the sum of numbers from 1 to the given number.
    - Otherwise, compute the product of numbers from 1 to the given number.
    - Insert the result into a temporary table.

2. For a given employee number, create a PL/SQL program that:
    - Retrieves the employee’s salary from the EMP table.  
    - Determines the salary class based on the following criteria:  
      - If the salary is less than 2500, classify it as 'LOW'.  
      - If the salary is 2500 or more, classify it as 'HIGH'.

3. Write a PL/SQL block that accepts a job type from the user.  
    - Search for the given job in the EMP table.  
    - Display one of the following messages:
      - The job occurs only once in the table.  
      - The job occurs more than once in the table.  
      - The job does not exist in the table.

4. Rewrite Question 1 using a PL/SQL function.
