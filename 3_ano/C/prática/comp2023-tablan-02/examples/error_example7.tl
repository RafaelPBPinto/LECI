-- Semantic Error example 7
-- Check if the target of the assign is not a formula
-- Check if the expression of the assign is not a formula

type table ATable{
   name: text;
   number: integer;
   average: real := (n1+n2)/2;
};

t: ATable;
t.name := "John";
t.number := 123;
t.average := 12.3;

r: real;
r:= t.average;