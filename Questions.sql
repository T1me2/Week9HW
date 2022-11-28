--1 List the employee number, last name, first name, sex, and salary of each employee
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries as salaries
on employees.emp_no = salaries.emp_no;

--2 List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, cast (hire_date as varchar(4)) as hire_year
from employees
where cast (hire_date as varchar(4)) = '1986'

--3 List the manager of each department along with that employee's employee number, last name, first name, and department name.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
join dept_manager as dm 
on employees.emp_no = dm.emp_no
join departments as departments
on departments.dept_no = dm.dept_no;

--4 List the department number for each employee along with that employee's
--employee number, last name, first name, and department name.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, departments.dept_no
from employees
join dept_emp as de
on employees.emp_no = de.emp_no
join departments as departments
on departments.dept_no = de.dept_no;

--5 List first name, last name, and sex of each employee whose first name is Hercules
--and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6 List each employee in the Sales department, including their employee number, last name, and first name.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees 
join dept_emp as de
on employees.emp_no = de.emp_no
join departments as departments
on departments.dept_no = de.dept_no
where departments.dept_no = 'd007';

--7 List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees 
join dept_emp as de
on employees.emp_no = de.emp_no
join departments as departments
on departments.dept_no = de.dept_no
where departments.dept_no = 'd007' or departments.dept_no = 'd005';

--8 List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
select (last_name), count(last_name) as last_name_count
from employees
group by last_name
order by last_name_count desc;

select * from employees
