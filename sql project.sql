select * from athlete1;

# 1- Show how many medal counts present for entire data?
select count(medal) as medal_count from athlete1 ;

# 2- Show count of unique Sports are present in olympics?
select count(distinct(sport)) as unique_sports_count from athlete1 ;

# 3-  Show how many different medals won by Team India in data?
select count(medal) as medal_count from athlete1 where Team = 'India' group by medal order by medal;

-- 4-  Show event wise medals won by india show from highest to lowest medals won in order?
select event, count(medal) as medal_count from athlete1
 where Team ='India' group by event order by medal_count desc;
 
 --  5-  Show event and yearwise medals won by india in order of year.
select event,year, count(medal) as medal_count from athlete1
where Team ='India' group by event,year order by year ;

--  6-  Show the country with maximum medals won gold, silver, bronze?
select year,team,count(medal) as medal_count from athlete1
where medal != 'no medal' group by team,year order by medal_count desc limit 1;

# 7-  Show the top 10 countries with respect to gold medals?
select Team, count(medal) as goldmedal from athlete1
where medal ='gold' group by Team order by goldmedal desc limit 10;

--  8-  Show in which year did United States won most medal?
 select year,count(medal) as medal_count from athlete1
 where team = 'united state' & medal != 'no medal'  group by year order by medal_count desc limit 1 ;
 
 -- 9-  In which sports United States has most medals?
 select sport,count(medal) as medal_count from athlete1
 where team = 'united state' & medal !='no medal' group by sport order by medal_count desc limit 1;
 
 --  10- Find top 3 players who have won most medals along with their sports and country?
select name,sport,team,count(medal) as medal_count from athlete1
 group by name,sport,team order by medal_count desc limit 3;
 
 # 11-  Find player with most gold medals in cycling along with his country?
 select name,sport,team, count(medal) as medal_count from athlete1
 where sport = 'cycling' & medal = 'gold' group by name,sport,team order by medal_count desc limit 1;
 
 --  12-  Find out the count of different medals of the top basketball player?
 select name,sport,count(medal) as medal_count from athlete1
 where sport = 'basketball' and medal != 'no medal' group by name,sport order by medal_count desc;
 
 -- 13-  Find out medals won by male, female each year . Export this data and plot graph in excel?
 select sex,year,count(medal) as medal_count from athlete1
 where medal != 'no medal' group by sex,year order by year asc;

