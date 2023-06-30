-- Semantic Error example 4
-- Check if add_line target is a table
-- Check if add_line has the correct number of arguments
-- Check if add_line arguments are of the correct type

type table ATable {
   name: text -> "name";
   number: integer;
};

t: ATable;
k: integer;
["One", 1] >> k;
["One", 1] >> t;
["Two"] >> t;
[3, "Three"] >> t;
[] >> t;