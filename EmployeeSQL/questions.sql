-- Question 1. List employee number, last name, first name, sex, and salary

Select "Employee"."EmployeeNumber", "LastName", "FirstName", "Sex", "Salary"
From "Employee"
LEFT JOIN "Salary" ON "Employee"."EmployeeNumber" = "Salary"."EmployeeNumber";

-- Question 2. List first name, last name, and hire date for employees hired in 1986

Select "FirstName", "LastName", "HireDate"
From "Employee"
Where "HireDate" Like '%1986'

-- Question 3. List manager of each department with department number, department name, employee number, last name, and first name

Select M."DepartmentNumber", "DepartmentName", M."EmployeeNumber", E."LastName", E."FirstName"
From "DepartmentManager" as M
Left Join "Employee" as E ON M."EmployeeNumber" = E."EmployeeNumber"
Left Join "Department" as D ON D."DepartmentNumber" = M."DepartmentNumber"

-- Question 4. List department, employee number, last name, first name, and department name for each department employee entry

Select DE."DepartmentNumber", D."DepartmentName",  DE."EmployeeNumber", E."LastName" E."FirstName"
From "DepartmentEmployee" as DE
Left Join "Department" as D On D."DepartmentNumber" = DE."DepartmentNumber"
Left Join "Employee"as E On DE."EmployeeNumber" = E."EmployeeNumber"

-- Question 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select "FirstName", "LastName", "Sex"
From "Employee"
Where "FirstName" = 'Hercules'
And "LastName" Like 'B%'

-- Question 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select DE."EmployeeNumber", E."LastName", E."FirstName", D."DepartmentName"
From "DepartmentEmployee" AS DE
Left Join "Employee" As E On DE."EmployeeNumber" = E."EmployeeNumber"
Left Join "Department" As D On DE."DepartmentNumber" = D."DepartmentNumber"
Where D."DepartmentName" = 'Sales'

-- Question 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select DE."EmployeeNumber", E."LastName", E."FirstName", D."DepartmentName"
From "DepartmentEmployee" AS DE
Left Join "Employee" As E On DE."EmployeeNumber" = E."EmployeeNumber"
Left Join "Department" As D On DE."DepartmentNumber" = D."DepartmentNumber"
Where D."DepartmentName" = 'Sales'
Or D."DepartmentName" = 'Development'

-- Question 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select "LastName", count(*) As frequency
From "Employee"
Group By "LastName"
Order By frequency DESC