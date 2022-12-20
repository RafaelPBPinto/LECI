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

