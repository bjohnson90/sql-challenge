COPY "Title"("TitleID", "Title")
FROM 'C:\Users\public\titles.csv'
DELIMITER ','
CSV HEADER;

COPY "Employee"("EmployeeNumber", "EmployeeTitle", "BirthDate", "FirstName", 
				"LastName", "Sex", "HireDate")
FROM 'C:\Users\public\employees.csv'
DELIMITER ','
CSV HEADER;

COPY "Department"("DepartmentNumber", "DepartmentName")
FROM 'C:\Users\public\departments.csv'
DELIMITER ','
CSV HEADER;

COPY "DepartmentEmployee"("EmployeeNumber", "DepartmentNumber")
FROM 'C:\Users\public\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY "DepartmentManager"("DepartmentNumber", "EmployeeNumber")
FROM 'C:\Users\public\dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY "Salary"("EmployeeNumber", "Salary")
FROM 'C:\Users\public\salaries.csv'
DELIMITER ','
CSV HEADER;