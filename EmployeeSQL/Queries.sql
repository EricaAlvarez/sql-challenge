--Query 1
/*
SELECT Employees.Emp_no, Employees.Last_name, Employees.First_name, Employees.Sex, Salaries.Salary
FROM Employees
INNER JOIN Salaries ON Employees.Emp_no = Salaries.Emp_no;
*/

--Query 2
/*
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
*/

--Query 3
/*
SELECT Deparment_manager.Dept_no, Deparments.Dept_name, Deparment_manager.Emp_no, Employees.Last_name, Employees.First_name
FROM Deparment_manager
INNER JOIN Employees ON Deparment_manager.Emp_no = Employees.Emp_no
INNER JOIN Deparments ON Deparment_manager.Dept_no = Deparments.Dept_no;
*/

--Query 4  
/*
SELECT Deparment_employees.Dept_no, Deparment_employees.Emp_no, Employees.Last_name, Employees.First_name, Deparments.Dept_name
FROM Deparment_Employees
INNER JOIN Employees ON Deparment_Employees.Emp_no = Employees.Emp_no
INNER JOIN Deparments ON Deparment_Employees.Dept_no = Deparments.Dept_no;
*/

--Query 5
/*
SELECT  First_name, Last_name, Sex
FROM Employees
WHERE First_name LIKE 'Hercules' AND Last_name LIKE 'B%';
*/

--Query 6
/*
SELECT   Employees.Emp_no, Employees.Last_name, Employees.First_name, Deparments.Dept_name
FROM Deparment_Employees
INNER JOIN Employees ON Deparment_Employees.Emp_no = Employees.Emp_no
INNER JOIN Deparments ON Deparment_Employees.Dept_no = Deparments.Dept_no
WHERE Deparments.Dept_name LIKE 'Sales';
*/

--Query 7
/*
SELECT   Employees.Emp_no, Employees.Last_name, Employees.First_name, Deparments.Dept_name
FROM Deparment_Employees
INNER JOIN Employees ON Deparment_Employees.Emp_no = Employees.Emp_no
INNER JOIN Deparments ON Deparment_Employees.Dept_no = Deparments.Dept_no
WHERE Deparments.Dept_name LIKE 'Sales'OR Deparments.Dept_name LIKE 'Development'
*/

--Query 8
/*
SELECT  Last_name, COUNT (*) AS Ocurrence
FROM Employees
GROUP BY Last_name
ORDER BY Ocurrence DESC;
*/


