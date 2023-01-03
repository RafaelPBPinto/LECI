%b   
     %D   %O   %F    %U
T = [0.4  0.2  0.25  0.25
     0.2  0.4  0.25  0.25 
     0.2  0.2  0.25  0.25
     0.2  0.2  0.25  0.25];

sum(T);

%c
x1 = [0 1 0 0]';

probc = T^7*x1;

disp(probc(3));

%d
M = [T - eye(length(T));ones(1,length(T))];
x = [zeros(length(T),1); 1];
probd = M\x;
disp(probd)

%e
xd = [1 0 0 0]';
xf = [0 0 1 0]';

probe = zeros(4,1);

Td1 = T^1*xd;
Td2 = T^2*xd;
Tf6 = T^6*xf;
Tf7 = T^7*xf;
probe(1) = Td1(1);
probe(2) = Td2(1);
probe(3) = Tf6(3);
probe(4) = Tf7(3);

