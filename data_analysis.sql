select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees 
join salaries 
ON employees.emp_no = salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees 
where hire_date between '1986-01-01' AND '1987-01-01';

select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_manager
join departments 
on dept_manager.dept_no=departments.dept_no
join employees
on dept_manager.emp_no=employees.emp_no;

select dept_emp.dept_no, dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no=departments.dept_no;

select employees.first_name, employees.last_name, employees.gender
from employees
where employees.first_name='Hercules' and employees.last_name like 'B%';

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no=employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no=employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name='Development'

select last_name,
count(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
