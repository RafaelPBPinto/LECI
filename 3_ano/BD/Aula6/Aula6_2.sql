/* 
2.
Company
a)SELECT Pname,Fname,Minit,Lname,Ssn
FROM COMPANY_project
JOIN COMPANY_works_on ON Pno = Pnumber
JOIN COMPANY_employee ON Essn = Ssn
b)SELECT Fname, Minit, Lname
FROM COMPANY_employee
JOIN (SELECT Ssn FROM COMPANY_employee WHERE Fname = 'Carlos' AND Minit = 'D' AND Lname = 'Gomes') AS supervisor
ON Super_ssn=supervisor.Ssn
c)SELECT Pname, total_hours FROM COMPANY_project
JOIN (SELECT Pno, SUM(Hours) AS total_hours FROM COMPANY_works_on GROUP BY Pno) AS total_hours_project
ON Pnumber=Pno
d)SELECT Fname, Minit, Lname FROM COMPANY_project
JOIN COMPANY_works_on ON Pnumber=Pno
JOIN (SELECT * FROM COMPANY_employee WHERE Dno=3) AS employees_dep3
ON Essn=Ssn
WHERE Pname = 'Aveiro Digital' AND [Hours]>20
e)SELECT Fname, Minit, Lname
FROM COMPANY_employee
LEFT JOIN COMPANY_works_on ON Essn = Ssn
WHERE Pno IS NULL 
f)SELECT Dname, AVG(Salary) AS Avg_Fem_Salary FROM COMPANY_department
JOIN (SELECT * FROM COMPANY_employee WHERE Sex='F') AS Fem_employees ON Dnumber=Dno
GROUP BY Dname
g)SELECT Fname, Minit, Lname FROM COMPANY_employee
JOIN (SELECT Essn, COUNT(Essn) AS count_dep FROM COMPANY_dependent GROUP BY Essn HAVING COUNT(Essn)>1) AS Two_or_more_dependents
ON Ssn=Essn
h)SELECT Fname, Minit, Lname FROM Company_department
JOIN (SELECT Fname, Minit, Lname, Ssn FROM COMPANY_Employee LEFT JOIN COMPANY_dependent ON Ssn=Essn WHERE Essn IS NULL) AS zero_dependents
ON Mgr_ssn=Ssn
i)SELECT Fname, Minit, Lname, [Address] FROM COMPANY_employee
JOIN (SELECT * FROM COMPANY_project JOIN COMPANY_dept_locations ON Dnum=Dnumber WHERE Dlocation!='Aveiro' AND Plocation='Aveiro') AS projects
ON Dno=Dnum
GROUP BY Fname, Minit, Lname, [Address]

GETSTOCKS
a)SELECT nome,nif,fax,endereco,condpag,tipo FROM GESTSTOCK_encomenda
FULL OUTER JOIN GESTSTOCK_fornecedor ON fornecedor=nif
WHERE fornecedor IS NULL
b)SELECT nome, codigo, AVG(GESTSTOCK_item.unidades) AS unidades_media FROM GESTSTOCK_item
JOIN GESTSTOCK_produto ON codProd=codigo
GROUP BY codigo, nome
c)SELECT AVG(n_produtos)AS media_nprodutos FROM 
(SELECT COUNT(codProd) AS n_produtos FROM GESTSTOCK_item GROUP BY numEnc) AS n_produtos_table
d)SELECT nif, GESTSTOCK_fornecedor.nome, GESTSTOCK_produto.nome, total_unidades FROM GESTSTOCK_fornecedor
JOIN (SELECT codProd, fornecedor, SUM(unidades) AS total_unidades FROM GESTSTOCK_item 
JOIN GESTSTOCK_encomenda ON numEnc=numero GROUP BY codProd, fornecedor) AS total_unidades_table
ON fornecedor=nif
JOIN GESTSTOCK_produto ON codProd=codigo

PRESCRICAO
a)SELECT nome, PRESCRICAO_paciente.numUtente FROM PRESCRICAO_paciente
LEFT OUTER JOIN PRESCRICAO_prescricao ON PRESCRICAO_paciente.numUtente = PRESCRICAO_prescricao.numUtente
WHERE numPresc IS NULL
b)SELECT especialidade, COUNT(numPresc) AS total_presc FROM PRESCRICAO_prescricao
JOIN PRESCRICAO_medico ON numMedico=numSNS
GROUP BY especialidade
c)SELECT nome, COUNT(numPresc) AS total_presc FROM PRESCRICAO_prescricao
JOIN PRESCRICAO_farmacia ON farmacia=nome
GROUP BY nome
d)
e)
f)
*/

SELECT nome, COUNT(numPresc) AS total_presc FROM PRESCRICAO_prescricao
JOIN PRESCRICAO_farmacia ON farmacia=nome
GROUP BY nome


