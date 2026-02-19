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

--STEP 5
node mainframe.js;
--!username: "triple-cart-38";
--!password: "lance-main-11";

--STEP 6
psql -f emptystack.sql; --* Creates new tables within "mainframe_override" database
\d emptystack_messages; --* Go into "emptystack_messages" to see what table holds
SELECT * FROM public.emptystack_messages WHERE to = 'triple-cart-38';
--* Returns ROWS inside public.emptystack_messages WHERE the reciever "to" = "triple-cart-38";
Ctrl f to search for taxis
--! LidWj | your-boss-99                   | triple-cart-38 | Project TAXI                                                                           
--! | Deploy Project TAXI by end of week. We need this out ASAP.

--STEP 7
\d emptystack_accounts; --* Go into "emptystack_accounts" table
SELECT * FROM public.emptystack_accounts WHERE username = 'your-boss-99';
--* Return ROW in "public.emptystack_accounts" WHERE the username is "your-boss-99"
--!   username   |    password    | first_name | last_name
--------------+----------------+------------+-----------
--! your-boss-99 | notagaincarter | Skylar     | Singer