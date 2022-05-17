--table schemata creation

-- drop table employees; 
-- drop table titles;
-- drop table dept_emp;
-- drop table salaries;
-- drop table departments;
-- drop table dept_manager;

-- employees Table (1)
CREATE TABLE employees (
  	emp_no VARCHAR PRIMARY KEY,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

-- titles Table (2)
CREATE TABLE titles (
  title_id VARCHAR PRIMARY KEY,
  title VARCHAR
);

-- dept_emp Table (3)
CREATE TABLE dept_emp (
  emp_no VARCHAR,
  dept_no VARCHAR
);

-- titles salaries (4)
CREATE TABLE salaries (
  emp_no VARCHAR,
  salary int
);

-- titles departments (5)
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR
);

-- titles dept_manager (6)
CREATE TABLE dept_manager (
  dept_no VARCHAR,
  emp_no VARCHAR
);

CREATE TABLE employeetable AS
SELECT a.emp_no, a.emp_title, a.birth_date, a.first_name,a.last_name,a.sex,a.hire_date, 
b.dept_no, c.salary, d. title, e.dept_name, f.emp_no as emp_manager_no
from employees as a 
inner join 
dept_emp as b
on a.emp_no = b.emp_no
inner join 
salaries as c
on a.emp_no = c.emp_no
inner join
titles as d
on a.emp_title = d.title_id
join
departments as e
on b.dept_no = e.dept_no
join
dept_manager as f
on e.dept_no = f.dept_no;

select * from employeetable