USE pubs 

GO
/*
1.
a) SELECT * 
FROM authors
b) SELECT au_fname, au_lname, phone 
FROM authors
c) SELECT au_fname, au_lname, phone 
FROM authors 
ORDER BY au_fname ASC, au_lname ASC
d) SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone 
FROM authors 
ORDER BY au_fname ASC, au_lname ASC
e) SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone 
FROM authors 
WHERE state = 'CA' AND au_lname != 'Ringer' 
ORDER BY au_fname ASC, au_lname ASC
f) SELECT *
FROM publishers
WHERE pub_name LIKE '%Bo%'
g) Select pub_name, city, state, country
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id AND type = 'Business'
h) SELECT pub_name, SUM(ytd_sales) AS total_sales
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id 
GROUP BY pub_name
i) SELECT pub_name, title, SUM(ytd_sales) AS total_sales
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id 
GROUP BY pub_name, title
j)SELECT title
FROM titles, stores, sales
WHERE stores.stor_id = sales.stor_id AND sales.title_id = sales.title_id AND stores.stor_name = 'Bookbeat'
GROUP BY title
k)SELECT au_fname AS first_name, au_lname AS last_name, COUNT(titles.type) AS total_types
FROM authors, titleauthor, titles
WHERE authors.au_id = titleauthor.au_id AND titleauthor.title_id = titles.title_id
GROUP BY au_fname, au_lname
HAVING COUNT(titles.type) > 1
l)
m)
n)
o)
p)
q)
r)
s)
t)
*/

SELECT stor_name, stor_address, city, [state], zip, COUNT(sales.title_id) as total_titles_sold
FROM stores, sales, titles
WHERE stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id
GROUP BY stor_name, stor_address, city, [state], zip
HAVING COUNT(sales.title_id) <= (SELECT COUNT(*) FROM titles)