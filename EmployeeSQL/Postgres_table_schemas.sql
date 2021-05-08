-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Salary" (
    "EmployeeNumber" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Title" (
    "TitleID" varchar   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "TitleID"
     )
);

CREATE TABLE "DepartmentEmployee" (
    "EmployeeNumber" int   NOT NULL,
    "DepartmentNumber" varchar   NOT NULL,
	CONSTRAINT "pk_DepartmentEmployee" PRIMARY KEY (
        "DepartmentNumber","EmployeeNumber"
     ),
	UNIQUE("DepartmentNumber","EmployeeNumber")
);


CREATE TABLE "DepartmentManager" (
    "DepartmentNumber" varchar   NOT NULL,
    "EmployeeNumber" int   NOT NULL,
    CONSTRAINT "pk_DepartmentManager" PRIMARY KEY (
        "DepartmentNumber","EmployeeNumber"
     ),
	UNIQUE("DepartmentNumber","EmployeeNumber")
);

CREATE TABLE "Employee" (
    "EmployeeNumber" int   NOT NULL,
    "EmployeeTitle" varchar   NOT NULL,
    "BirthDate" varchar   NOT NULL,
    "FirstName" varchar   NOT NULL,
    "LastName" varchar   NOT NULL,
    "Sex" char   NOT NULL,
    "HireDate" varchar   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "EmployeeNumber"
     )
);

CREATE TABLE "Department" (
    "DepartmentNumber" varchar   NOT NULL,
    "DepartmentName" varchar   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "DepartmentNumber"
     )
);

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_EmployeeNumber" FOREIGN KEY("EmployeeNumber")
REFERENCES "Employee" ("EmployeeNumber");

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_DepartmentNumber" FOREIGN KEY("DepartmentNumber")
REFERENCES "Department" ("DepartmentNumber");

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_EmployeeNumber" FOREIGN KEY("EmployeeNumber")
REFERENCES "Employee" ("EmployeeNumber");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_DepartmentNumber" FOREIGN KEY("DepartmentNumber")
REFERENCES "Department" ("DepartmentNumber");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_EmployeeNumber" FOREIGN KEY("EmployeeNumber")
REFERENCES "Employee" ("EmployeeNumber");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_EmployeeTitle" FOREIGN KEY("EmployeeTitle")
REFERENCES "Title" ("TitleID");