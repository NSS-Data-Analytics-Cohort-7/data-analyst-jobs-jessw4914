

/* number 1
1739*/
/*select count(*) from data_analyst_jobs;*/


/* number 2
Write a query to look at just the first 10 rows. 
What company is associated with the job posting on the 10th row?*/

Exxon Mobile

/*select *
from data_analyst_jobs
limit 10;*/


/* number 3
How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

21 in TN and then 6 in KY*/

/*select count(*)
from data_analyst_jobs
where location = 'TN' */

/*select count(*)
from data_analyst_jobs
where location = 'KY' OR  LOCATION ='TN';*/

/* number 4
How many postings in Tennessee have a star rating above 4?

573*/
/*
select count(*)
from data_analyst_jobs
where star_rating>='4'
*/

/* number 5
How many postings in the dataset have a review count between 500 and 1000?
151

select count(*)
from data_analyst_jobs
WHERE review_count  between 500 and 1000*/

/* number 6
Show the average star rating for companies in each state.
The output should show the state as state and the average rating for the state as avg_rating. 
Which state shows the highest average rating?*/
NE - Nebraska

select location as state, AVG(star_rating) AS avg_rating
from data_analyst_jobs
Where star_rating is not null
Group by location
order by avg_rating DESC

/* number 7
Select unique job titles from the data_analyst_jobs table. How many are there?*/
881

select COUNT(DISTINCT TITLE)
from data_analyst_jobs

/* number 8 How many unique job titles are there for California companies?
230

select COUNT(DISTINCT TITLE), location as state
from data_analyst_jobs
where location = 'CA'
GROUP BY location
*/

/* number 9
Find the name of each company and its average star rating for all companies 
that have more than 5000 reviews across all locations. How many companies 
are there with more that 5000 reviews across all locations?*/

select company, avg(star_rating)as avg_rating, review_count
from data_analyst_jobs
Where company is not null
AND
review_count >5000
group by company,review_count
order by avg_rating desc

/* number 10
Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset has 
the highest star rating? What is that rating?*/

select company, avg(star_rating)as avg_rating, review_count
from data_analyst_jobs
Where company is not null
AND
review_count >5000
group by company,review_count
order by avg_rating ASC

/* number 11
Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?*/
1759 - word analyst
775 - different job titles

select COUNT(DISTINCT (title))
from data_analyst_jobs
where title like '%_nalyst%'or title like '%_NALYST%'

/* number 12
How many different job titles do not contain either the word ‘Analyst’ 
or the word ‘Analytics’? What word do these positions have in common?*/
22

select COUNT(DISTINCT (title))
from data_analyst_jobs
where title not like '%naly%'or title like '%NALY%'


BONUS: You want to understand which jobs requiring SQL are hard to fill. 
Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.


/*sanity check*/
select *
from data_analyst_jobs
limit 11





