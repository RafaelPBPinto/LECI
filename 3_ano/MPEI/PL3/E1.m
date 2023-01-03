% 2 aulas por semana => quarta e sexta
      %nf  %f  
Tij = [0.7 0.8  % não faltar
       0.3 0.2];% faltar
% a)  Se estiver presente na aula de quarta numa determinada semana, qual a
% probabilidade de estar presente na aula de quarta da semana seguinte

ax0 = [1, 0]';   % não faltou quarta
    
ax1 = Tij * ax0;  % prob sexta

%x2 = Tijx1 = Tij(Tijx0) = Tij^2x0

ax2 = Tij * ax1; % prob quarta 2ª semana

fprintf('a) %f\n', ax2(1));

% b)Se nao estiver presente na aula de quarta numa determinada semana, qual
% a probabilidade de estar presente na aula de quarta da semana seguinte

bx0 = [0, 1]';

bx1 = Tij * bx0;
bx2 = Tij * bx1;

fprintf('b) %f\n', bx2(1));

% c) ) Sabendo que esteve presente na primeira aula, qual a probabilidade 
% de estar na ultima aula, assumindo que o semestre tem exactamente 15 
% semanas de aulas e nao existem feriados?

cx0 = [1, 0]';

% xn = Tij^n*x0

% (15*2)-1 = 29

cx29 = Tij ^ 29 * cx0;

fprintf('c) %f\n', cx29(1))

% d) Represente num grafico a probabilidade de faltar a cada uma das 30 
% aulas, assumindo que a probabilidade de estar presente na primeira aula
% é de 85%

dx0 = [0.50, 0.50]';

dx29 = Tij ^ 29 * dx0;

fprintf('d) %f\n', dx29(2))


