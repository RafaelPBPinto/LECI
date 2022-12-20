%a)
T=rand(20);
S=sum(T);
T=T./S;
sum(T);

%b)
x = zeros(1,20)';
x(1)=1;

iteracoes = [2 5 10 100];

y = zeros(1,4);

for i=1:length(iteracoes)
    z = T^iteracoes(i)*x;
    y(i) = z(20);
end

fprintf("2 transicoes: %.5f\n", y(1)*100)
fprintf("5 transicoes: %.5f\n", y(2)*100)
fprintf("10 transicoes: %.5f\n", y(3)*100)
fprintf("100 transicoes: %.5f", y(4)*100)
