-- Create a title table
CREATE TABLE Titles (
    Emp_title_id VARCHAR (5) NOT NULL PRIMARY KEY,
	Title VARCHAR(100) NOT NULL
);

-- Create an employees table
CREATE TABLE Employees (
    Emp_no INT NOT NULL PRIMARY KEY,
	Emp_title_id VARCHAR (5) NOT NULL,
	Birth_date DATE NOT NULL,
	First_name VARCHAR (100) NOT NULL,
	Last_name VARCHAR (100) NOT NULL,
	Sex VARCHAR (100) NOT NULL,
	Hire_date DATE NOT NULL,
	FOREIGN KEY (Emp_title_id) REFERENCES Titles(Emp_title_id)
);

-- Create a deparments table
CREATE TABLE Deparments (
    Dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
    Dept_name VARCHAR(100) NOT NULL
);

-- Create a deparment employees table
CREATE TABLE Deparment_employees (
    Emp_no INT NOT NULL,
    Dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (Emp_no) REFERENCES Employees (Emp_no),
	FOREIGN KEY (Dept_no) REFERENCES Deparments (Dept_no)
);

-- Create a deparment manager table
CREATE TABLE Deparment_manager (
    Dept_no VARCHAR(4) NOT NULL,
	Emp_no INT NOT NULL,
	FOREIGN KEY (Dept_no) REFERENCES Deparments (Dept_no),
	FOREIGN KEY (Emp_no) REFERENCES Employees (Emp_no)
);

-- Create a salary table
CREATE TABLE Salaries (
    Emp_no INT NOT NULL PRIMARY KEY,
	Salary INT NOT NULL,
	FOREIGN KEY (Emp_no) REFERENCES Employees (Emp_no)
);