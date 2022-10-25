N=1e5;
T=1000;
k=10;

mx=randi(10,1000,1e5);
dif=zeros(1,N);

for ncol=1: N
    col = mx(:, ncol);
    dif(ncol)=length(unique(col))==k;
end

prob = (sum(dif)/N)