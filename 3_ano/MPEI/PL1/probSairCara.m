function [probSimulacao] = probSairCara(p, nLancamentos, nCaras, nExperiencias)
%Probabilidade de sair cara
lancamentos = rand(nLancamentos,nExperiencias) > p;
sucessos = sum(lancamentos)==nCaras;
probSimulacao = sum(sucessos)/nExperiencias;
stem(sucessos);
end