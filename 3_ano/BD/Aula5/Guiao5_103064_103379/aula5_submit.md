# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
π Fname,Minit,Lname,Ssn (employee⨝ Ssn=Essn (project⨝ Pnumber=Pno works_on))
```


### *b)* 

```
πFname,Minit,Lname (employee ⨝ employee.Super_ssn = supervisor.Ssn (ρsupervisor πSsn (σFname='Carlos' ∧ Minit='D' ∧ Lname='Gomes' (employee))))
```


### *c)* 

```
γPname; THours←sum(Hours) (project⨝Pnumber = Pno (works_on))
```


### *d)* 

```
πFname,Minit,Lname (σDnumber = 3 (employee ⨝ Ssn = Essn (department ⨝ Dnumber = Dnum (σPname = 'Aveiro Digital' ∧ Hours > 20 (project ⨝ Pnumber=Pno works_on)))))
```


### *e)* 

```
πFname,Minit,Lname (σPno=null (employee⟕ Ssn=Essn works_on))
```


### *f)* 

```
γDname;AverageSalary←avg(employee.Salary) (department⨝ Dnumber=Dno σSex='F' (employee))
```


### *g)* 

```
(σDependencies > 2 (γFname; Dependencies←count(Fname) (employee ⨝ Ssn = Essn dependent)))
```


### *h)* 

```
πFname,Lname (σMgr_ssn ≠ Essn (employee ⨝ Ssn = Mgr_ssn department ⟕ Mgr_ssn = Essn dependent))
```


### *i)* 

```
π Fname,Minit,Lname,Address (employee ⨝Dno=Dnum σDlocation!='Aveiro'∧Plocation='Aveiro' (project ⨝Dnum=Dnumber dept_location))
```


## ​Problema 5.2

### *a)*

```
πnome,nif,fax,endereco,condpag,tipo (σfornecedor=null (encomenda⟗fornecedor=nif (fornecedor)))
```

### *b)* 

```
γcodigo,nome;unidades_media←avg(item.unidades) (produto⨝ codigo=codProd item)
```


### *c)* 

```
γ;media_nprodutos←avg(nprodutos) (γnumEnc;nprodutos←count(codProd) (item))
```


### *d)* 

```
πnif,fornecedor.nome,produto.nome,qtd_total ((γcodProd,fornecedor;qtd_total←sum(item.unidades) (item⨝numEnc = numero encomenda))⨝ fornecedor=nif fornecedor ⨝ codProd = codigo produto)
```


## ​Problema 5.3

### *a)*

```
πnome (σnumPresc = null (paciente ⟕ prescricao))
```

### *b)* 

```
γespecialidade;ContadorPrescricoes←count(especialidade) (medico ⨝ numSNS = numMedico prescricao)
```


### *c)* 

```
γfarmacia;PrescrPorFarm←count(farmacia) (prescricao ⨝ farmacia = nome farmacia)
```


### *d)* 

```
πnumRegFarm,nome,formula (σnumRegFarm= 906 ∧ numPresc = null (farmaco ⟕ (farmaco ⟕ nome = nomeFarmaco presc_farmaco)))
```

### *e)* 

```
γfarmacia,nome;FarmCounter←count(nome) (πnumPresc,farmacia,numReg,nome (σfarmacia≠null (prescricao ⨝ (πnumPresc, numReg,nome (presc_farmaco ⨝ numRegFarm = numReg farmaceutica)))))
```

### *f)* 

```
σcountMedPrescDif > 1 (γnumUtente,nome;countMedPrescDif←count(numUtente) (γnumUtente,numMedico,nome;dif_med←count(numMedico) (πnumUtente, numPresc, numMedico,nome (paciente ⨝  prescricao))))
```
