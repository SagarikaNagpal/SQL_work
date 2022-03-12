--https://www.w3resource.com/sql-exercises/soccer-database-exercise/basic-exercises-on-soccer-database.php



select * from public.soccer_city;
select * from public.soccer_team;
select * from public.soccer_country;
select * from public.soccer_venue;
select * from public.asst_referee_mast;
select * from public.coach_mast;
select * from public.goal_details;
select * from public.match_captain;
select * from public.match_details;
select * from public.match_mast;
select * from public.penalty_gk;
select * from public.penalty_shootout;
select * from public.player_booked;
select * from public.player_in_out;
select * from public.player_mast;
select * from public.playing_position;
select * from public.referee_mast;



--1. From the following table, write a SQL query to count the number of venues for EURO cup 2016. Return number of venues.

select count(*) from public.soccer_venue;

--2. From the following table, write a SQL query to count the number of countries participated in the EURO cup 2016. 
select count(distinct(team_id)) from public.player_mast;

--3. From the following table, write a SQL query to find the number of goals scored in EURO cup 2016 within normal play schedule.
 select count(goal_schedule) from public.goal_details; 

--4. From the following table, write a SQL query to find the number of matches ended with a result.
select count(*) from public.match_mast where results = 'WIN'

--5. From the following table, write a SQL query to find the number of matches ended with draws.
select count(*) from public.match_mast where results = 'DRAW'

--6. From the following table, write a SQL query to find the date when Football EURO cup 2016 begins.
select min(play_date) from public.match_mast;

--7. From the following table, write a SQL query to find the number of self-goals scored in EURO cup 2016. 
select count(goal_type) from public.goal_details where goal_type  = 'O';


--8. From the following table, write a SQL query to count the number of matches ended with a results in-group stage.
select count(play_stage) from public.match_mast where play_stage ='G' and results = 'WIN';

--9. From the following table, write a SQL query to find the number of matches got a result by penalty shootout.
select count(distinct(match_no)) from penalty_shootout

--10. From the following table, write a SQL query to find the number of matches decided by penalties in the Round 16. 
select count(play_stage) from match_mast where play_stage = 'R' and decided_by = 'P' 

--11. From the following table, write a SQL query to find the number of goal scored in every match within normal play schedule. 
--Sort the result-set on match number. Return match number, number of goal scored.
 

select match_no,count(*) from goal_details gd group by match_no order by match_no asc; 

--12. From the following table, write a SQL query to find those matches where no stoppage time added in the first half of play. 
--Return match no, date of play, and goal scored.

select match_no ,play_date ,goal_score from match_mast where stop1_sec = '0'

--13.Write a SQL query to count the number of matches ending with a goalless draw in-group stage of play. 
--Return number of matches.
select count(distinct(match_no)) from match_details md  where win_lose ='D' and goal_score ='0' and play_stage ='G'

--14. From the following table, write a SQL query to count the number of matches ending with only one goal win, 
--except those matches, which was decided by penalty shoot-out. Return number of matches.  

select count(*) from match_details md where goal_score ='1' and win_lose ='W' and decided_by not in ('P') ;


--15. From the following table, write a SQL query to count the number of players replaced in the tournament. 
--Return number of players as "Player Replaced".
select count(*) as "Player Replaced" from player_in_out where in_out ='O'


--16. From the following table, write a SQL query to count the total number of players replaced within normal time of play. 
--Return number of players as "Player Replaced".
select count(*) as "Player Replaced" from player_in_out where in_out ='O' and play_schedule ='NT'


--17. From the following table, write a SQL query to count the number of players replaced in the stoppage time. 
--Return number of players as "Player Replaced".
select count(*) as "Player Replaced" from player_in_out where in_out ='O' and play_schedule ='ST'


--18. From the following table, write a SQL query to count the total number of players replaced in the first half of play. 
--Return number of players as "Player Replaced"
select count(*) as "Player Replaced" from player_in_out where play_half= '1' and in_out ='I' and play_schedule ='NT'


--19. From the following table, write a SQL query to count the 
--total number of goalless draws have there in the entire tournament. Return number of goalless draws. 

select  count(distinct (match_no)) from match_details where win_lose='D' and goal_score ='0'


--20. From the following table, write a SQL query to count the total number of players replaced in the extra time of play. 
select count(*) from player_in_out where play_schedule ='ET' and in_out ='O'








