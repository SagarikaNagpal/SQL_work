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






