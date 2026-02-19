-- STEP1
\c mainframe_override; --*establishing connection to the database
\d; --*Listing of all tables inside "mainframe_override"
\d forum_posts; --*Looking at what "forum_posts" contains
SELECT * FROM public.forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01'; 
--* This returns to you all ROWS where the "DATE" columns are between the specified dates
--!USERNAME = "smart-money-44" 

--STEP 2
SELECT last_name from public.forum_accounts WHERE username = 'smart-money-44';
--* Bascially saying: In the COLUMN "username", find the ROW where name = "smart-money-44", and return the "last_name" COLUMN 
--!last-name = "Steele"

-- STEP 3
SELECT * FROM public.forum_accounts WHERE last_name = 'Steele';
--* Find all/return all ROWS where "last_name" = "Steele"
--!   username     | first_name | last_name 
-----------------+------------+-----------
--! sharp-engine-57 | Andrew     | Steele
--! stinky-tofu-98  | Kevin      | Steele
--! smart-money-44  | Brad       | Steele

-- STEP 4
\d; --* Used to look at all the tables in "mainframe_override"
\d emptystack_accounts; --* Go into "EMPTYSTACK_ACCOUNTS" table to see contents
SELECT * FROM public.emptystack_accounts WHERE last_name = 'Steele';
--* Find/return the ROWS in "public.emptystack_accounts" where the "last_name" COLUMN = "Steele"
--! username    |  password   | first_name | last_name
----------------+-------------+------------+-----------
--! triple-cart-38 | password456 | Andrew     | Steele
--! lance-main-11  | password789 | Lance      | Steele