# BD: Guião 9


## ​9.1
 
### *a)*

```
CREATE PROCEDURE removeEmployee @Ssn INT
AS
	BEGIN
		DELETE FROM dbo.COMPANY_dependent WHERE Essn = @Ssn;
		DELETE FROM dbo.COMPANY_works_on WHERE Essn = @Ssn;
		UPDATE COMPANY_department SET Mgr_ssn = NULL WHERE Mgr_ssn = @Ssn;
		UPDATE COMPANY_employee SET Super_ssn = NULL WHERE Super_ssn = @Ssn;
		DELETE FROM dbo.COMPANY_employee WHERE Ssn = @Ssn;
	END;
```

### *b)* 

```
CREATE PROCEDURE getGestores 
AS
	BEGIN
		SELECT Ssn, fname, minit, lname 
		FROM COMPANY_employee JOIN COMPANY_department ON Ssn = Mgr_ssn;

		SELECT Ssn, DATEDIFF(YEAR, Mgr_start_date, GETDATE()) AS years_as_mgr
		FROM COMPANY_employee JOIN COMPANY_department ON Ssn = Mgr_ssn
		WHERE Mgr_start_date = (SELECT MIN(Mgr_start_date) FROM COMPANY_department);
	END;
```

### *c)* 

```
CREATE TRIGGER verify_employee ON COMPANY_department INSTEAD OF INSERT,UPDATE
AS
	BEGIN
		IF (SELECT COUNT(*) FROM inserted) > 0
			BEGIN
				DECLARE @employee AS INT;
				SELECT @employee = Mgr_ssn FROM inserted;
				
				IF (SELECT COUNT(Dnumber) FROM COMPANY_department WHERE Mgr_ssn=@employee) >= 1
					RAISERROR('Employee cant manage more than one department',16,1);
				ELSE
					INSERT INTO COMPANY_department SELECT * FROM inserted;
			END

	END
```

### *d)* 

```
CREATE TRIGGER verify_salary ON COMPANY_employee AFTER INSERT,UPDATE
AS
	BEGIN
		DECLARE @salary_emp AS INT;
		DECLARE @ssn_emp AS INT;
		DECLARE @dno_emp AS INT;
		DECLARE @salary_ges AS INT;

		SELECT @salary_emp= inserted.Salary , @ssn_emp= inserted.Ssn , @dno_emp = inserted.Dno FROM inserted;
		SELECT @salary_ges = COMPANY_employee.Salary FROM COMPANY_department 
						INNER JOIN COMPANY_employee ON COMPANY_employee.Ssn = COMPANY_department.Mgr_ssn
									WHERE COMPANY_department.Dnumber = @dno_emp;

		IF @salary_emp > @salary_ges
		BEGIN
			UPDATE COMPANY_employee SET COMPANY_employee.Salary	= @salary_ges-1
			WHERE COMPANY_employee.Ssn = @ssn_emp;
		END
			
	END
```

### *e)* 

```
CREATE FUNCTION COMPANY_infolocname (@ssn INT) RETURNS @tabela
TABLE([name] VARCHAR(50) , [location] VARCHAR(50))
AS
	BEGIN
		INSERT @tabela
			SELECT COMPANY_project.Pnumber , COMPANY_project.Plocation FROM COMPANY_works_on
					INNER JOIN COMPANY_project ON COMPANY_works_on.Pno = COMPANY_project.Pnumber 
							WHERE COMPANY_works_on.Essn = @ssn
		RETURN;
	END
```

### *f)* 

```
CREATE FUNCTION COMPANY_upmedsalary(@dnumber INT) RETURNS @tabela
TABLE ([fname] VARCHAR(50),[lname] VARCHAR(50),[ssn] INT)
AS
	BEGIN
		INSERT @tabela
			SELECT COMPANY_employee.Ssn,COMPANY_employee.Fname,COMPANY_employee.Lname
				FROM COMPANY_employee 
					JOIN(SELECT COMPANY_employee.Dno,AVG(Salary) as med_salary
							FROM COMPANY_employee,COMPANY_department
							WHERE COMPANY_employee.Dno = COMPANY_department.Dnumber
							GROUP BY Dno) AS media_dep_salary
					ON media_dep_salary.Dno = @dnumber AND media_dep_salary.med_salary < COMPANY_employee.Salary 
		RETURN;
	END
```

### *g)* 

```
CREATE PROC Project_budget_byDept @DeptNumInput SMALLINT
AS
	
	DECLARE @totalbudget as FLOAT, @budget as FLOAT, @projname as VARCHAR(10), @pnumber AS SMALLINT, @ploc AS VARCHAR(15),
	@empSsn as INT, @Esalary as FLOAT, @Deptnum as SMALLINT, @totalhours as INT, @hours as INT, @Ppresent as INT, @Ppast as INT,
	@ProjnamePast as VARCHAR(16), @plocPast as VARCHAR(16);

	CREATE TABLE #Resultss(
			pname	VARCHAR(16),
			pnumber SMALLINT,
			plocation VARCHAR(16),
			dnum	SMALLINT,
			budget FLOAT,
			totalbudget FLOAT
	);

	DECLARE C CURSOR FAST_FORWARD
	FOR SELECT Ssn, Salary, Hours,Pno,Pname,Plocation,Dnum
	From employee JOIN
	(SELECT	Essn,works_on.Hours,Pname,Pno,Plocation,Pnumber,Dnum
	FROM	works_on JOIN
						(SELECT Pname, Pnumber,Plocation,Dnum
						FROM project
						WHERE Dnum = @DeptNumInput) AS proj ON proj.Pnumber = Pno) AS employeeHours ON Ssn = employeeHours.Essn
						ORDER BY Pno ASC;

	OPEN C;

	FETCH C INTO @empssn,@Esalary,@hours,@pnumber,@projname,@ploc,@Deptnum;

	SELECT @Ppast = @pnumber  ,@totalbudget = 0, @totalhours = 0, @budget = 0;

	WHILE @@FETCH_STATUS =0
		BEGIN
			if @Ppast = @pnumber
				BEGIN 
					PRINT '1 if ' + CAST(@pnumber as VARCHAR);
					SET @totalbudget += @Esalary;
					SET @budget += (@hours*@Esalary)/40;
					SET @ProjnamePast = @projname;
					SET @plocPast = @ploc;


				END

			else
				BEGIN
					INSERT INTO #Resultss(pname, pnumber, plocation, dnum, budget, totalbudget)
					VALUES (@ProjnamePast, @Ppast, @plocPast, @Deptnum, @budget, @totalbudget);
					SELECT @totalbudget = 0, @budget = 0,@Ppast = @pnumber;
					SET @totalbudget += @Esalary;
					SET @budget += (@hours*@Esalary)/40;

					if (SELECT COUNT(Pno) FROM works_on WHERE Pno = @pnumber ) = 1
						BEGIN
							INSERT INTO #Resultss(pname, pnumber, plocation, dnum, budget, totalbudget)
							VALUES (@projname, @pnumber, @ploc, @Deptnum, @budget, @totalbudget);
							SELECT @totalbudget = 0, @budget = 0,@Ppast = @pnumber;
						END

				END

				PRINT CAST(@totalbudget as VARCHAR) + '-' + CAST(@budget as VARCHAR);
			FETCH  C INTO @empssn,@Esalary,@hours,@pnumber,@projname,@ploc,@Deptnum;
		END;

	CLOSE C;

	DEALLOCATE C;

	SELECT *
	FROM #Resultss;

	DROP TABLE #Resultss;
```

### *h)* 

```
CREATE TRIGGER department_delete ON COMPANY_department AFTER DELETE
AS
	BEGIN
		BEGIN
			IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = 'COMPANY_department_deleted'))
					CREATE TABLE Company_department_deleted(
						Dname			VARCHAR(45)		NOT NULL,
						Dnumber			INT				NOT NULL,
						Mgr_Ssn			INT,
						Mgr_start_date	DATE,

						PRIMARY KEY (Dnumber),
						FOREIGN KEY (Mgr_Ssn) REFERENCES COMPANY_employee(Ssn),
					);
		END

		DECLARE @Dnumber AS INT;
		DECLARE @Dname AS VARCHAR(100);
		DECLARE @Mgr_ssn AS INT;
		DECLARE @Mgr_start_date AS DATE;
		
		SELECT @Dnumber= deleted.Dnumber , @Dname= deleted.Dname , @Mgr_ssn = deleted.Mgr_ssn, @Mgr_start_date = deleted.Mgr_start_date FROM deleted;
		INSERT INTO COMPANY_department_deleted VALUES (@Dname, @Dnumber, @Mgr_ssn, @Mgr_start_date);
	END

CREATE TRIGGER instead_of_department_delete ON COMPANY_department INSTEAD OF DELETE
AS
	BEGIN
		BEGIN
			IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
				WHERE TABLE_NAME = 'COMPANY_department_deleted'))
					CREATE TABLE Company_department_deleted(
						Dname			VARCHAR(45)		NOT NULL,
						Dnumber			INT				NOT NULL,
						Mgr_Ssn			INT,
						Mgr_start_date	DATE,

						PRIMARY KEY (Dnumber),
						FOREIGN KEY (Mgr_Ssn) REFERENCES COMPANY_employee(Ssn),
					);
		END

		DECLARE @Dnumber AS INT;
		DECLARE @Dname AS VARCHAR(100);
		DECLARE @Mgr_ssn AS INT;
		DECLARE @Mgr_start_date AS DATE;
		
		SELECT @Dnumber= deleted.Dnumber , @Dname= deleted.Dname , @Mgr_ssn = deleted.Mgr_ssn, @Mgr_start_date = deleted.Mgr_start_date FROM deleted;
		INSERT INTO COMPANY_department_deleted VALUES (@Dname, @Dnumber, @Mgr_ssn, @Mgr_start_date);

		DELETE FROM COMPANY_department WHERE Dnumber = @Dnumber;
	END

O trigger instead of permite reescrever uma função, ou implementar uma nova que de outra forma nao seria suportada. Este executa antes de qualquer alteração dos dados.

O trigger after permite executar uma nova função depois de uma dada ação. Este executa depois de qualquer alteração dos dados.
```

### *i)* 

```
Os Stored Proceddures nao necessitam de retornar um valor, ao contrario da UDF.
Os UDFs teem os mesmos beneficios dos stored procedures, mas sao usados em situacoes diferentes.

OS Stored Procedures podem ser usados para as seguintes situacoes:
	Validacao e seguranca dos dados
	Operacoes de modificacao dos dados

Os UDFS podem ser usados nas seguintes situacoes:
	Funcoes de tempo e data
	Funcoes de manipulacoes de string
	Funcoes de manipulacao de negocios
```
