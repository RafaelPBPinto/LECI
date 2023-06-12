# BD: Guião 8


## ​8.1. Complete a seguinte tabela.
Complete the following table.

| #    | Query                                                                                                      | Rows  | Cost  | Pag. Reads | Time (ms) | Index used | Index Op.            | Discussion |
| :--- | :--------------------------------------------------------------------------------------------------------- | :---- | :---- | :--------- | :-------- | :--------- | :------------------- | :--------- |
| 1    | SELECT * from Production.WorkOrder                                                                         | 72591 | 0.484 | 531        | 1171      | PK         | Clustered Index Scan |            |
| 2    | SELECT * from Production.WorkOrder where WorkOrderID=1234                                                  |  1     |  0.0032831     |      26      |    9       |    PK        |     Clustered Index Seek                 |            |
| 3.1  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 10000 and 10010                               |   11.9    |  0.0032952     |    26        |   10        |   PK         |             clustered Index Seek         |            |
| 3.2  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 1 and 72591                                   |   72591    |    0.473   |    556        |     729      |       PK     |       Clustered Index Seek               |            |
| 4    | SELECT * FROM Production.WorkOrder WHERE StartDate = '2007-06-25'                                          |   72591    |  0.473502     |    1743        |   114        |    PK        |       Clustered Index Scan               |            |
| 5    | SELECT * FROM Production.WorkOrder WHERE ProductID = 757                                                   |   11.4    | 0.0032945      |    302        |     30      |      ProductID      |     Index Seek (Non Clustered)                 |            |
| 6.1  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 757                              |   11.4    |    0.0032945   |     302       |    26       |       ProductID , StartDate     |       Index Seek (Non Clustered)               |            |
| 6.2  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945                              |   1105    |    0.473502   |    812        |    112       |       ProductID , StartDate     |       Clustered Index Scan(Clustered)               |            |
| 6.3  | SELECT WorkOrderID FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'            |   1.79623    |   0.473502     |     814       |     35      |     ProductId, StartDate       |      Clustered Index Scan (Clustered)                |            |
| 7    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |    1.79623    |   0.473502     |       814     |    38       |     ProductID , StartDate       |      Clustered Index Scan (Clustered)               |            |
| 8    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04' |   1.79623     |   0.473502    |      814      |     37      |      ProductID , StartDate      |       Clustered Index Scan(Clustered)               |            |

## ​8.2.

### a)

```
CREATE UNIQUE CLUSTERED INDEX rid_index ON dbo.mytemp(rid)
```

### b)

```
Ocupação das páginas: 67.88%
Fragmentação: 99.17%
```

### c)

```
Fillfactor: 65%
tempo de inserção: 173660 ms 

Fillfactor: 80%
tempo de inserção: 171013 ms

Fillfactor: 90%
tempo de inserção: 179990 ms
```

### d)

```
Fillfactor: 100%
tempo de inserção: 169166 ms
```

### e)

```
Sem índices: 150980 ms
Com índices: 304653 ms

O tempo de inserção com índices é maior.

```

## ​8.3.

### i)
```
CREATE UNIQUE CLUSTERED INDEX index ON Company.Employee(Ssn)
```


### ii)
```
CREATE NONCLUSTERED INDEX index ON Company.Employee(Fname,Lname)
```
### iii)
```
CREATE NONCLUSTERED INDEX index ON Company.Employee(Dno)
```
### iv)
```
CREATE UNIQUE CLUSTERED INDEX index ON Company.works_on(Essn,Pno)
```

### v)
```
CREATE NONCLUSTERED INDEX index ON Company.Dependent(Essn,Dependent_name)
```


### vi)
```
CREATE NONCLUSTERED INDEX index ON Company.Project(Dnum,Pnumber)
```
