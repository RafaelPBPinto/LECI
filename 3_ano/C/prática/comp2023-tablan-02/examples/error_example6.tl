-- Semantic Error example 6
-- Check if the 'if' condition is a boolean expression
-- Check if the comparison is between compatible types

c : integer;
b : integer;
c := 2;
b := 2;
if 2            -- error is integer
    b := 2;  
else
    b := 0;
end;

if c + 1 < "2"  -- wrong condition
    c := 2;
else
    c := 0;
end;