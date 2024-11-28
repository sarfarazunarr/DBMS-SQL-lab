-- Here are all queries that are executed by me 
-- during performing lab tasks
-- NO AI tools are used in writing these statements
-- By Sarfaraz 2K23-BSCS-21 (USMS Bhitshah)
-- LAB Manuals Assigned By Professor Qasim Memon from University of Sufism and Modern Sciences Bhitshah
-- If you are learning SQL then I recommend you to don't copy code write it by your own and practice so that you can master sql.

-- /////// LAB MANUAL START /////// --


-- Use Describe Keyword to view details
DESCRIBE employees;
SELECT * FROM departments;

-- Perform Arithmatic Operations
SELECT first_name, salary, salary + 2000 as EIDI 
from employees;

SELECT first_name, salary, (salary / 100)*2 as TAX
from employees;

SELECT first_name, last_name, employee_id, salary, salary-((salary / 100)*2) 
as "Tax Deducted Salary" from employees;


-- Use DISTINCT Keyword
select first_name as "Name" from employees;
select DISTINCT department_name  
from departments;
describe job_history;

-- Use concatenation operator '||' for combining strings
select region_id, country_name || country_id 
from countries;

select location_id, city || postal_code 
as "City with Zip" from locations;

select region_id || region_name 
As RegionData from Regions;

-- Use Concatination operator and also combine
-- external characters or strings

select postal_code||' belongs to '||city
As CityInfo from locations;

select job_title||' earns '||max_salary
As "Earning Range" from jobs;

select first_name ||' has this email '||email 
As UserWithEmail from employees;


-- Objective 1 
--(1)Employee with Salary upto 50K
select first_name, salary
from employees 
where salary > 50000;


--(2) Find departments located in landon
-- Location id of landon is 2400
select department_name, location_id
from departments 
where location_id = 2400;

--(3) List of all employees hired 
-- after January 1, 2020
select first_name, hire_date
from employees 
where hire_date > '01-JAN-2020';




--(4) Employees that have 'manager' job title
SELECT * From jobs;  -- For Testing
--Job Ids contain MAN/MGR are managers
select first_name, job_id
from employees
where job_id LIKE '%MAN%' OR job_id LIKE '%MGR%';



-- Objective (2)
-- Employees in departments 10, 20, or 30
select first_name, department_id
from employees where department_id
in (10, 20, 30);


-- (2) Employees with salary
-- from 20k to 80k
select first_name, salary
from employees
where salary 
between 20000 and 80000;


-- (3) Employees except
-- 50 department id;
select first_name, department_id
from employees where department_id
not in (50);

-- (4) Employees whose
-- name starts with 'A'
select first_name, last_name
from employees 
where first_name like 'A%';


--(5) Employees with less then 50k  
-- salary and from department id 20
select first_name, salary,
department_id from employees
where salary < 50000
and department_id = 20;


-- (5) Employees whose salary is less
-- then 30k or were hired before 2015
select first_name, salary,
hire_date from employees
where salary < 30000
or hire_date < '01-JAN-2005';

-- Objective 3
-- (1) Sort Employees with Salary
-- in ascending order
select first_name, salary
from employees
order by salary ASC;



-- (2) Sort Departments with
-- location in descending order
select department_name, location_id
from departments order by location_id DESC;


-- (3) Sort Employees with
-- departmentId in ascending order
-- and then by salary in descending order
select first_name, department_id,
salary from employees
order by department_id asc,
salary desc;


-- (4) Sort Employees with
-- firstname in alphabatic order
select first_name from employees
order by first_name ASC;


-- Objective 4
-- (1) Display Employees names in lowercase
select first_name, LOWER(last_name)
from employees;


-- (2) Display Employees names in uppercase
select UPPER(first_name), UPPER(last_name)
from employees;


-- (3) Display Employees names in capitalize format
 select INITCAP(first_name),INITCAP(last_name)
from employees;


-- (4) Join first_name, last_name columns using
-- concatinate
select CONCAT(first_name,last_name) "Full Name"
from employees;


-- (5) Get first three chars from lastname
select SUBSTR(last_name,1, 3)
from employees;


-- (6) Get the length of firstname of employee
 select first_name,
 length(first_name)
 "SIZE" from employees;

-- (7) Get the Position of 'a' in last_name
select last_name, instr(last_name, 'a')
from employees;


-- (8) Add 5 leading zeros to employee ID
select employee_id,
lpad(employee_id, 5, 0)
"Full Id" from employees;

-- (9) Add 5 steriks (*) in department_id
select department_id,
rpad(department_id, 5, '*')
"Secret" from employees;

-- (10) Trim Spaces from job_title
select job_title, trim(job_title, ' ', ' ') from jobs;


-- (11) Replace 'Manager' with 'Lead' in job_title
select job_title,
replace(job_title, 'Manager', 'Lead')
"Updated Role"
from jobs;


-- (12) Round salary to two decimal places nearest hundredth
select round(salary, 2)
from employees;


-- (13) Truncate commission to one decimal places
select commission_pct, trunc(commission_pct, 1) "Precisied"
from employees where commission_pct is not null;


-- (14) Find Remainder when salary is divided with 2
-- and check even or odd
SELECT salary, 
    MOD(salary, 2) AS "Remainde",
    CASE WHEN MOD(salary, 2) = 0
    THEN 'Even'
    ELSE 'Odd'
    END AS "Even/Odd"
FROM employees;


-- (15) Get the duration of employement of a employee in months
select first_name,
round(months_between(sysdate, hire_date),2) "Service Months"
from employees;


-- (16) Add 6 months to hire date of employee
select first_name, hire_date,
add_months(hire_date, 6)
as "Promotion Date"
from employees;


-- (17) Find the next Monday Date of hire_date
select first_name, hire_date, next_day(hire_date, 'Monday')
as "First Weekend" from employees;


-- (18) Get the last day of the month of hiring date for reporting or payroll
select hire_date,
last_day(hire_date)
as "Reporting Date"
from employees;


-- (19) Round hire_date to nearest Month
select hire_date, round(hire_date, 'DAY')
as "Reporting Date" from employees;


-- (20) Get the first date of month in which employees is hired
select hire_date,
trunc(hire_date, 'MONTH')
from employees;






























-- THANKS


