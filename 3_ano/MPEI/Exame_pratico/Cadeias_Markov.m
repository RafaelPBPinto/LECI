% a
%    A   B   C   D   E   F
H = [0   0   0   0   1/3 0
     1   0   0   0   1/3 0
     0   1/2 0   1   0   0
     0   0   1   0   0   0
     0   1/2 0   0   0   0
     0   0   0   0   1/3 0];

r = [1/6 1/6 1/6 1/6 1/6 1/6]';

for i=1:10
    r = H*r;
end
fprintf('a)\n');
disp(r);

% c
%    A   B   C   D   E   F
H = [0   0   0   0   1/3 1/6
     1   0   0   0   1/3 1/6
     0   1/2 0   1   0   1/6
     0   0   1   0   0   1/6
     0   1/2 0   0   0   1/6
     0   0   0   0   1/3 1/6];

r = [1/6 1/6 1/6 1/6 1/6 1/6]';

for i=1:10
    r = H*r;
end
fprintf('c)\n');
disp(r);

% d
A = 0.8*H + 0.2*(1/6*ones(6));
r = [1/6 1/6 1/6 1/6 1/6 1/6]';
for i = 1:10
    r = A*r;
end
fprintf('d)\n');
disp(r);

% e
r = [1/6 1/6 1/6 1/6 1/6 1/6]';
for i=1:20
    r = A*r;
end
fprintf('e)\n');
disp(r)
%%
%a
      %s  %n  %c
T = [ 0.7 0.2 0.1
      0.2 0.3 0.5
      0.3 0.3 0.4
    ]';

%b
Pb = 1*0.7^2;
disp(Pb)

%c
x = [0.7 0.2 0]';  % prob não chover segundo dia

w = T*x;
z = w/(0.7+0.2);
y = T*z;

probc = 1*(w(1)+w(2))*(y(1)+y(2));
disp(probc)
%d
x = [1 0 0]';
fprintf('Quando no Primeiro dia é sol no fim de Janeiro houve:\n');
somaSol = x(1);        %o primeiro dia ja foi sol
somaNuvens = x(2);
somaChuva = x(3);
for i = 2:31
    %ou y = T^(i-1)*x; depois usar y
    x = T*x;
    somaSol = somaSol + x(1);
    somaNuvens = somaNuvens + x(2);
    somaChuva = somaChuva + x(3);
end

fprintf('%.2f dias de Sol\n %.2f dias de Nuvens\n %.2f dias de Chuva\n', somaSol,somaNuvens, somaChuva);
fprintf('A pessoa vai ter dores durante %.1f dias\n\n',somaSol * 0.1 + somaNuvens*0.3 + somaChuva*0.5);

%e
x = [0 0 1]';
fprintf('Quando no Primeiro dia é chuva no fim de Janeiro houve:\n');
somaSol = x(1);        %o primeiro dia ja foi chuva
somaNuvens = x(2);
somaChuva = x(3);
for i = 2:31
    x = T*x;
    somaSol = somaSol + x(1);
    somaNuvens = somaNuvens + x(2);
    somaChuva = somaChuva + x(3);
end

fprintf('%.2f dias de Sol\n %.2f dias de Nuvens\n %.2f dias de Chuva\n', somaSol,somaNuvens, somaChuva);
fprintf('A pessoa vai ter dores durante %.1f dias\n\n',somaSol * 0.1 + somaNuvens*0.3 + somaChuva*0.5);

%%
% a 
%    1   2   3   4   5   
T = [0.8 0   0   0.3 0
     0.2 0.6 0   0.2 0
     0   0.3 1   0   0
     0   0.1 0   0.4 0
     0   0   0   0.1 1];

% b
x = [1 0 0 0 0]'; 
y = zeros(1,100);

for i = 2:100
    x = T*x;
    y(i) = x(2);
end
figure(1);
plot(y);
title('Estado 2');

% c

x = [1 0 0 0 0]'; 
y1 = zeros(1,100);

for i = 2:100
    x = T*x;
    y1(i) = x(3);  
end
x = [1 0 0 0 0]'; 
y2 = zeros(1,100);
for i = 2:100
    x = T*x;
    y2(i) = x(5); 
end

figure(2);
subplot(1,2,1);
plot(y1);
title('Estado 3');
subplot(1,2,2)
plot(y2);
title('Estado 5');

% d
%    1   2   4   3   5 
C = [0.8 0   0.3 0   0
     0.2 0.6 0.2 0   0
     0   0.1 0.4 0   0
     0   0.3 0   1   0
     0   0   0.1 0   1];

Q = C(1:3, 1:3);

% e
% F = (I - Q)^-1
F = (eye(3) - Q)^-1;

% f
t = sum(F);

fprintf('Nº médio passos para absorção partindo estado 1 é: %.4f\n',t(1));
fprintf('Nº médio passos para absorção partindo estado 2 é: %.4f\n',t(2));
fprintf('Nº médio passos para absorção partindo estado 4 é: %.4f\n',t(3));

% g
R = C(4:5, 1:3);
B = R*F;
fprintf('Prob(estado3) = %f, Prob(estado 5) = %f\n',B(1,1),B(2,1));

%%
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
%%
% a
%    9   1   3   5   3   9   FIM
T = [0   0   0   0   0   0   0
     0.5 0   0   0   0   0   0
     0.5 0   0   0   0   0   0
     0   1/3 0.6 0.4 0.5 0.3 0
     0   1/3 0   0.1 0.2 0   0
     0   1/3 0.4 0.3 0   0.3 0
     0   0   0   0.2 0.3 0.4 0];

% b e c
N = 1e5;
a = cell(N,1);
for i = 1:N
    a(i) = {crawl(T, 1, 7)};
end

lengths = cellfun('length',a);
cont = 0;
cont2 = 0;
for i=1:N
    b = a{i}; 
    if lengths(i) == 8 && b(2) == 2 && b(7) == 6
        cont = cont + 1;
    end
    if lengths(i) == 8 && b(2) == 2
        cont2 = cont2 + 1;
    end
end

res = cont/N;
res2 = cont2/N;
fprintf('A probabilidade de 7 dig iniciada por 91 e terminada em 9 é %f\n',res);
fprintf('A probabilidade de 7 dig iniciada por 91 é %f\n',res2);
