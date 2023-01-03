
%b   1C     2A   3T    4O    5R     6fim
T = [0    0.8/3  0    0.8/3  0      0
     0.5  0      0.5  0      0.8/3  0
     0    0.8/3  0    0.8/3  0.8/3  0
     0.5  0      0.5  0      0.8/3  0
     0    0.8/3  0    0.8/3  0      0
     0    0.20   0    0.2    0.2    0];

%d
states = cell(10^6,1);
for i=1:10^6
    x = randi(5,1,1);
    states(i) = {crawl(T,x,6)};
end

%e
count = 0;
for i=1:10^6
    if isequal(states{i}, [1 2 3 4])
        count = count+1;
    end
end
probe = count / 10^6;
disp(probe)

%g
count = 0;
countlen = 0;
for i=1:10^6
    word = states{i};
    if word(1) == 1
        count = count+1;
        countlen = countlen + length(word);
    end
end

media = countlen / count;
disp(media);

%% functions
function [state] = crawl(H, first, last)
     state = [first];
     while (1)
          state(end+1) = nextState(H, state(end));
          if ismember(state(end), last) % verifies if state(end) is absorving
              break;
          end
     end
end

function state = nextState(H, currentState)
     probVector = H(:,currentState)';
     n = length(probVector);
     state = discrete_rnd(1:n, probVector);
end

function state = discrete_rnd(states, probVector)
     U=rand();
     i = 1 + sum(U > cumsum(probVector));
     state= states(i);
end
