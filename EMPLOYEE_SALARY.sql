USE EMPLOYEE_SALARY;
SHOW TABLES;
SELECT * FROM employee_salary_dataset;

-- COUNT OF EMPLOYEES
SELECT COUNT(ID) FROM employee_salary_dataset;
-- 35

-- NUMBER OF MALE AND FEMALE
SELECT GENDER,COUNT(ID) FROM employee_salary_dataset GROUP BY GENDER;
-- Female	18
-- Male	  	17

-- TOTAL SALARY ACCORDING TO GENDER
SELECT GENDER,SUM(SALARY) AS TOTAL_SALARY FROM employee_salary_dataset GROUP BY GENDER;
-- Female	36988500
-- Male	    35081650

-- FOR AVERAGE SALARY
SELECT GENDER,AVG(SALARY) AS AVERAGE_SALARY FROM employee_salary_dataset GROUP BY GENDER;

INSERT INTO employee_salary_dataset VALUES (36,5,28,'Male',34000);

select * from employee_salary_dataset where Experience_Years>=5;
select * from employee_salary_dataset where Experience_Years>=5 and age<30;
select * from employee_salary_dataset order by age desc;
select *,upper(Gender) as G from employee_salary_dataset where Experience_Years>=5 and age<30;
select *,length(Salary) from employee_salary_dataset;
select now();

select sum(salary) from employee_salary_dataset;
select age,avg(salary) from employee_salary_dataset group by age order by age desc;
select max(salary) from employee_salary_dataset;
select min(salary) from employee_salary_dataset;
select count(*) from employee_salary_dataset;

select age,avg(salary) from employee_salary_dataset group by age order by age;
select age,avg(salary) from employee_salary_dataset group by age  having count(salary)>2 order by age;

-- ORDER OF EXECUTION IN SQL FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY - LIMIT --

SHOW TABLES;
SELECT * FROM NAMES;
SELECT * FROM employee_salary_dataset AS ES JOIN NAMES N  ON ES.ID=N.ID;
SELECT * FROM employee_salary_dataset AS ES INNER JOIN NAMES N  ON ES.ID=N.ID;
SELECT * FROM employee_salary_dataset AS ES LEFT NAMES N  ON ES.ID=N.ID;
SELECT * FROM employee_salary_dataset AS ES RIGHT JOIN NAMES N  ON ES.ID=N.ID;
SELECT * FROM employee_salary_dataset AS ES FULL JOIN NAMES N  ON ES.ID=N.ID;










