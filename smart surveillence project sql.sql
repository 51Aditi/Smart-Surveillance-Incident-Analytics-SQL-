/*=========================================================
Project Name : Smart Surveillance Incident Analytics
Database     : Surveillance_Project
Dataset      : Chicago Crime Dataset (2012–2017)
Records      : 1.87 lakh+ Crime Incidents
Purpose      : Crime Pattern Analysis and Surveillance Analytics

=========================================================*/

-- =====================================================
--  Create Database
-- =====================================================
create database Surveillance_proj ;
use Surveillance_proj ;

-- =====================================================
--  Data Validation & Cleaning
-- =====================================================

-- chnage table name 
rename table chicago_crimes_2012_to_2017_clean to clean_DB ;

-- info of table 
desc clean_db;

-- chnage data type of date column
update clean_db set `date`  = str_to_date(`date` , '%m/%d/%Y %h:%i:%s %p') ;
alter table clean_db modify `date` datetime ;

alter table clean_db add column updatedOn_new datetime ;
update clean_db set updatedOn_new = str_to_date(`UpdatedOn`,'%m/%d/%Y %h:%i:%s %p');
alter table clean_db modify updatedOn_new datetime ;
alter table clean_db drop column `UpdatedOn` ;

-- change datatype of other columns 
ALTER TABLE clean_DB
MODIFY RowID INT,
MODIFY ID BIGINT,
MODIFY CaseNumber VARCHAR(20),
MODIFY Block VARCHAR(100),
MODIFY IUCR VARCHAR(10),
MODIFY PrimaryType VARCHAR(50),
MODIFY Description VARCHAR(100),
MODIFY LocationDescription VARCHAR(100),
MODIFY Arrest BOOLEAN,
MODIFY Domestic BOOLEAN,
MODIFY Beat SMALLINT,
MODIFY District TINYINT,
MODIFY Ward TINYINT,
MODIFY CommunityArea TINYINT,
MODIFY FBICode VARCHAR(10),
MODIFY XCoordinate INT,
MODIFY YCoordinate INT,
MODIFY Year YEAR,
MODIFY Latitude Double ,
MODIFY Longitude Double;

desc clean_db;

-- -- Check for nulls in key columns
SELECT 
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS null_date,
    sum(case when `primarytype` is null then 1 else 0 end ) as null_primary_T,
    sum(case when district is null then 1 else 0 end ) as null_district ,
    sum(case when latitude is null then 1 else 0 end ) as null_latitude 
from clean_DB ;

-- -- Check for duplicates 
select casenumber , count(*) from clean_db group by casenumber having count(*) >1;

-- -- Check date range and unique crime types
select min(date) , max(date) from clean_Db ;
select distinct `primarytype` from clean_db order by 1;


-- =====================================================
-- A. Crime Trend Over Time
-- =====================================================

-- 1. What is the total number of crimes per year (2012–2016)? Is crime increasing or decreasing overall?
 select year ,count(*) from clean_db group by year order by count(*)  desc ;
 -- 2012 most crime detected

-- 2. What is the month-wise crime trend across all years? Does crime spike in summer months?
select month(date) , count(*) from clean_db group by month(date) order by month(date)  ;
-- jan - May more crime are done

-- 3. What is the day-of-week pattern? Are weekends worse than weekdays?
select dayname(date),count(*) from clean_db group by dayname(date) order by count(*) desc ;
-- weekdays worse than weekeend

-- 4. What is the hour-of-day pattern? Which hours see the highest crime volume — early morning, daytime, or night?
select T, count(*) from
(select date ,
case 
     when hour(date) between 5 and 11 then 'morning'
     when hour(date) between 12 and 16 then 'afternoon'
     when hour(date) between 17 and 20 then 'evening'
     else 'night' 
end as T
from clean_db ) as der_time group by T  ;
 -- most are are done commited at night 
 
-- 5. What is the 3-month rolling average of crime count? (smooths noise to reveal the real trend)
 
 -- 5. Monthly Crime Count Analysis
 select year(date)as y , month(date)  as m , count(*) as tt from clean_db group by y , m order by y ,m ;

-- 6. What is the year-over-year % change in total crimes? 
with yearly_crime as (
select year(date) as y , count(*) as t from clean_db group by year(date)),
crime_lag as (
select y , t , lag(t) over(order by y)  as previous_year_crime from yearly_crime )
select * , ((t - previous_year_crime) / previous_year_crime )*100  as percentage_crime from crime_lag ;

-- =====================================================
-- B. Crime Type Analysis
-- =====================================================
-- 1. What are the top 10 most frequently committed crime types (PrimaryType)?
select primarytype , count(*) from clean_db group by primarytype order by count(*) desc limit 10 ;

-- 2. Which crime types increased the most, and which decreased the most, from 2012 to 2016?
select primarytype , count(*) from clean_db group by primarytype order by count(*) desc limit 1;
select primarytype , count(*) from clean_db group by primarytype order by count(*) asc limit 1 ;








select * from  clean_DB ;
select count(*) from  clean_DB ;