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
