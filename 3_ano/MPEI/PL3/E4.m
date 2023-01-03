%a   
    %A      B   C   D
T = [0.16 0.36 0.24 0.24
     0    0    0    1
     0    0    0    1
     0.36 0.24 0.24 0.16];      

%b
x = [1 0 0 0]';
x(1)=1;

iteracoes = [2 5 10 100, 200];

y = zeros(1,5);

for i=1:length(iteracoes)
    z = T^iteracoes(i)*x;
    y(i) = z(20);
end

fprintf("2 transicoes: %.5f\n", y(1)*100)
fprintf("5 transicoes: %.5f\n", y(2)*100)
fprintf("10 transicoes: %.5f\n", y(3)*100)
fprintf("100 transicoes: %.5f", y(4)*100)
fprintf("200 transicoes: %.5f", y(5)*100)

%c
M = [T - eye(4); ones(1,4)];
x = [zeros(4,1); 1];
c = M\x;

disp(c)