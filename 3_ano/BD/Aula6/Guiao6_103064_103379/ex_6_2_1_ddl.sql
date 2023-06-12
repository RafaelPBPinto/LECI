USE p1g2
GO




/*EX1- CREATE COMPANY DATABASE*/

CREATE TABLE COMPANY_employee(
[Fname] varchar(100) NOT NULL,
[Minit] varchar(1) NOT NULL,
[Lname] varchar(100) NOT NULL,
[Ssn]	INT NOT NULL,
[Bdate]	DATE NOT NULL,
[Address] varchar(250) NOT NULL,
[Sex]	varchar(1) NOT NULL,
[Salary] FLOAT NOT NULL,
PRIMARY KEY ([Ssn])
)	

ALTER TABLE COMPANY_employee
ADD [Super_ssn] INT REFERENCES COMPANY_employee([Ssn]);

CREATE TABLE COMPANY_department(
[Dname]				varchar(100)	NOT NULL,
[Dnumber]			INT		NOT NULL,
[Mgr_ssn]			INT		,
[Mgr_start_date]	DATE	,
PRIMARY KEY ([Dnumber]),
FOREIGN KEY ([Mgr_ssn]) REFERENCES COMPANY_employee([Ssn])
)	

ALTER TABLE COMPANY_employee
ADD [Dno] INT NOT NULL REFERENCES COMPANY_department([Dnumber]);

CREATE TABLE COMPANY_dept_locations(
[Dnumber]			INT		NOT NULL,
[Dlocation]		varchar(100)NOT NULL,
PRIMARY KEY ([Dnumber],[Dlocation]),
FOREIGN KEY ([Dnumber]) REFERENCES COMPANY_department([Dnumber])
)	


CREATE TABLE COMPANY_project(
[Pname]		varchar(250)NOT NULL,
[Pnumber]		INT		NOT NULL,
[Plocation]	varchar(100)NOT NULL,
[Dnum]			INT		NOT NULL,
PRIMARY KEY ([Pnumber]),
FOREIGN KEY ([Dnum]) REFERENCES COMPANY_department([Dnumber])
)	


CREATE TABLE COMPANY_works_on(
[Essn]			INT		NOT NULL,
[Pno]			INT		NOT NULL,
[Hours]			FLOAT	NOT NULL,
PRIMARY KEY ([Essn],[Pno]),
FOREIGN KEY ([Essn]) REFERENCES COMPANY_employee([Ssn]),
FOREIGN KEY ([Pno]) REFERENCES COMPANY_project([Pnumber])
)	

CREATE TABLE COMPANY_dependent(
[Essn]			INT		NOT NULL,
[Dependent_name]varchar(250) NOT NULL,
[Sex]		varchar(1)	NOT NULL,
[Bdate]			DATE	NOT NULL,
[Relationship] varchar(100) NOT NULL
PRIMARY KEY ([Essn],[Dependent_name])
FOREIGN KEY ([Essn]) REFERENCES COMPANY_employee([Ssn])
)






