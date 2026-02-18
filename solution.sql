-- STEP1
\c mainframe_override; --*establishing connection to the database
\d; --*Listing of all tables inside "mainframe_override"
\d forum_posts; --*Looking at what "forum_posts" contains
SELECT * FROM public.forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01'; 
--* This returns to you all ROWS where the "DATE" columns are between the specified dates
--!USERNAME = "smart-money-44" 

--STEP 2
SELECT last_name from public.forum_accounts WHERE username = 'smart-money-44';
--* Bascially saying: find the ROW WHERE the COLUMN "username" = smart-money-44, and get/show/return the "last_name"
--!last-name = "Steele"

