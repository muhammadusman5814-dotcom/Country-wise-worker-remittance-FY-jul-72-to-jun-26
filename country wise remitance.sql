-- whole data

select *
from worker_remitance;


-- top 5 high remitance by country

select "Countries", Round(Sum("Remitance in USD")::numeric,2) AS Remitance
from worker_remitance
group by "Countries"
order by Remitance desc
limit 5 ;

-- top 5 low remitance by country

select "Countries", Round(Sum("Remitance in USD")::numeric,2) AS Remitance
from worker_remitance
group by "Countries"
order by Remitance asc
limit 5 ;

-- top 5 lowest remitance by month 

select "Month",
Round(Sum("Remitance in USD")::numeric,2) AS remitance
from worker_remitance
group by "Month"
order by remitance ASC
LIMIT 5;

-- top 5 highest remitance by month 

select "Month",
Round(Sum("Remitance in USD")::numeric,2) AS remitance
from worker_remitance
group by "Month"
order by remitance desc
LIMIT 5;

-- country with high remitance than avg remitance

with country_total AS (
	select "Countries" , sum("Remitance in USD") AS total_remitance
	from worker_remitance
	group by "Countries"
)
select "Countries" , Round(total_remitance::numeric,2) as total_remitance
from country_total
where total_remitance > (select Avg(total_remitance)
from country_total
)
order by total_remitance desc;
;


-- remitance by year

select "Year",
Round(Sum("Remitance in USD")::numeric,2) AS Remitance
from worker_remitance
group by "Year"
order by "Year" DESC;

-- total Remitance

select round(sum("Remitance in USD"):: numeric,2) As Total
from worker_remitance ;

-- total countries

select COUNT(DISTINCT("Countries"))
from worker_remitance;



