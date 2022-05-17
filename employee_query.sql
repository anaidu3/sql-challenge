--queries

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select distinct emp_no, last_name, first_name, sex, salary from employeetable

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select distinct emp_no, first_name, last_name, hire_date 
from employeetable 
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select distinct emp_manager_no, dept_no, dept_name, last_name, first_name
from employeetable
where emp_manager_no = emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select distinct emp_manager_no, dept_no, dept_name, last_name, first_name
from employeetable
where emp_manager_no = emp_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select distinct first_name, last_name, sex
from employeetable
where (last_name LIKE 'B%') AND first_name = 'Hercules'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select distinct emp_no, last_name, first_name, dept_name
from employeetable
where dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select distinct emp_no, last_name, first_name, dept_name
from employeetable
where dept_name = 'Sales' OR dept_name = 'Development'

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select distinct count(*) as NUM, last_name
from employees
GROUP BY last_name
order by num DESC