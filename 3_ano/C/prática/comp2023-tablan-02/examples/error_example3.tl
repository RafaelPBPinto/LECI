-- Semantic Error example 3
-- Check if the operands are compatible
-- If the target is an integer, the operands must be integers
-- If the target is a real, the operands could be integers or reals
-- Check if type cast is of a supported type

t: integer;
k: real;

t := 1 + 2.0; -- Error
k := 2.4 + 1; -- OK

x: boolean;
x := boolean(k);

