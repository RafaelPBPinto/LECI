function keys =  genKeys(N,imin,imax, chars, probs)
    keys = {N};
    if nargin == 5
        cs = cumsum(probs);
    end
    for i=1:N
        size = randi([imin imax]);
        switch nargin
            case 4
                aux = randi(length(chars),1, size);
            otherwise
                aux = zeros(1,N);
                randomNum = rand(1,size);
                for k=1:size
                    aux(k) = 1 + sum(randomNum(k) > cs); 
                end
        end
        keys{i} = chars(aux(randi(1,size)));
    end
end