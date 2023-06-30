# Verificações a fazer por operação

| Número | Operação             | Verificação                                                                                              | Estado   |
|--------|----------------------|----------------------------------------------------------------------------------------------------------|----------|
| 1      | Table                | Verificar se a tabela já existe                                                                           | ✅ Feito |
| 2      | Table                | Verificar se o título é texto                                                                             | ✅ Feito |
| 3      | FieldAssignFormula     | Verificar se a fórmula é igual ao tipo do campo                                                           | ✅ Feito |
| 4      | FieldAssignHeader    | Verificar se o cabeçalho é texto                                                                          | ✅ Feito |
| 5      | Assign               | Verificar se os targets estão declarados                                                                  | ✅ Feito |
| 6      | Assign               | Verificar se o target e a expressão são de tipos compatíveis                                              | ✅ Feito |
| 7      | AssignNew            | Verificar se o target é uma tabela                                                                        | ✅ Feito |
| 8      | AssignHeader         | Verificar se o target é uma tabela                                                                        | ✅ Feito |
| 9      | AssignHeader         | Verificar se a expressão é do tipo texto                                                                  | ✅ Feito |
| 10     | Declaration          | Verificar se, ao declarar o target com outro target, o segundo target é uma tabela                       | ✅ Feito |
| 11     | Declaration          | Verificar se o target já foi declarado                                                                  | ✅ Feito |
| 12     | Add_Line             | Verificar se o target está declarado                                                                      | ✅ Feito |
| 13     | Add_Line             | Verificar se o target é uma tabela                                                                        | ✅ Feito |
| 14     | Add_Line             | Verificar se o número de colunas a serem inseridas é igual ao número de colunas da tabela (excpeto quando se insere uma linha vazia)                 | ✅ Feito |
| 15     | Add_Line             | Verificar se as colunas a serem inseridas são do mesmo tipo das colunas da tabela                        | ✅ Feito |
| 16     | RemoveTable          | Verificar se a tabela existe                                                                              | ✅ Feito |
| 17     | RemoveTable          | Verificar se o target é uma tabela                                                                        | ✅ Feito |
| 18 | For | Verifcar que a tabela que se quer percorrer existe | ✅ Feito |
| 19 | For | Verificar se variável temporária não está declarada para trás | ✅ Feito |
| 20 | While | Verificar se condição é booleana | ✅ Feito |
| 21     | Length           | Verificar se o target é uma tabela                                                                        | ✅ Feito |
| 22     | Length           | Verificar se a coluna a aceder existe |  |
| 23     | ExprBoolean          | Verificar se os tipos são compatíveis                                                                     | ✅ Feito |
| 24     | ExprMultDivMod       | Verificar se os tipos são compatíveis                                                                     | ✅ Feito |
| 25     | ExprAddSub           | Verificar se os tipos são compatíveis                                                                     | ✅ Feito |
| 26     | Center           | Verificar se as expressões são do tipo texto                                                                      | ✅ Feito |
| 27     | Center           | Verificar se o length das expressões são do tipo inteiro                                                                     | ✅ Feito |
| 28     | Read           | Verificar se a variável já foi declarada                                                                     | ✅ Feito |
| 29     | Read           | Verificar se o caminho do ficheiro é do tipo text                                                                    | ✅ Feito |
| 30     | Read           | Verificar se o atributo column é do tipo inteiro                                                                    | ✅ Feito |
| 31     | Read           | Verificar se a nome da coluna é do tipo text                                                                    | ✅ Feito |
| 32     | IfStatement          | Verificar se a condição é do tipo booleano                                                                      | ✅ Feito |
| 33 | Formulas | Verificar se o target do assign não é uma fórmula | ✅ Feito |
| 34 | Formulas | Verificar se a expressão do assign não é uma fórmula | ✅ Feito |
| 35 | TypeCast | Verificar se tipo para qual se deve converter é válido | ✅ Feito |
| 36 | TypeCast | Verificar se variável pode ser convertida para o tipo que se pretende | |

