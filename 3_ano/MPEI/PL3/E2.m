%a)  A    B  C
T = [1/3 1/4 0      %A
     1/3 11/20 1/2  %B
     1/3 1/5 1/2];  %C
a = sum(T);             %Se for vetor de '1's é matriz estocástica
disp(a);
%b)
%Grupo A tem 60 alunos, grupo B tem 15 e C tem 15
x = [60/90 15/90 15/90]';
disp(x)
%c)
y = T^29*x;
y = y.*90;
y = round(y,0);
fprintf('O grupo A contem %d alunos\nO grupo B contem %d alunos\nO grupo C contem %d alunos\n\n', y);
sum(y);             %Verifica se ainda sao 90 alunos

%d)
x = [1/3 1/3 1/3]';
y2 = T^29*x;
y2 = y2.*90;
y2 = round(y2,0);
fprintf('O grupo A contem %d alunos\nO grupo B contem %d alunos\nO grupo C contem %d alunos\n', y2);