-- Semantic Error example 1
-- Check if table already exists
-- Check if table title is text
-- Check if table header is text
-- Check if value assign to field is of the correct type

type table ATable -> 123 {
   name: text -> 1;
   number: integer := "error";
};

type table ATable { 
   name: text;
   number: integer;
};