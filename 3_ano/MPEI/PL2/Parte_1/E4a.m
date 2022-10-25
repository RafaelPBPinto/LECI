dias_ano = 365;
N = 1e4;

dif = zeros(1,100);

for i = 1:100
    mx = randi(dias_ano,i,N);
    dif1 = zeros(1,N);
    for ii = 1:N
        col = mx(:,ii);
        dif1(ii) = length(unique(col))==i;
    end
    dif(i) = sum(dif1)/N;
end

num_p = find(dif<0.5,1,'first')