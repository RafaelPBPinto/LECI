-- Semantic Error example 5
-- Check if read column attribute is of type int
-- Check if read expr attribute is of type text


type table ATable{
   name: text;
   number: integer;
};

t2: ATable;

t2 := read "../examples/list1.csv" using column " " as name, column " d" as number;
println t2;
t2 := read "../examples/list1.csv" using 1 as name, 2 as number;
println t2;