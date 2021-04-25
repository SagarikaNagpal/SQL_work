Select  mov_title , mov_year from movie
select mov_year from movie where mov_title = 'American Beauty'
select mov_title from movie where mov_year = '1999'
select mov_title from movie where mov_year >= '1998' ------- wrong '<' instead of '>'

---Ask bhai:
5. Write a query in SQL to return the name of all reviewers and name of movies together in a single list.
Select  a.mov_title ,  b.rev_name from movie a join reviewer b on a.mov_id = b.rev_id

SELECT reviewer.rev_name
FROM reviewer
UNION
(SELECT movie.mov_title
FROM movie);

6. Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating.
select rev_name from reviewer where rev_stars >= '7'
SELECT reviewer.rev_name
FROM reviewer, rating
WHERE rating.rev_id = reviewer.rev_id
AND rating.rev_stars>=7 
AND reviewer.rev_name IS NOT NULL;


select a.mov_id , b.rev_id , b.rev_stars , b.num_o_ratings,a.mov_title from  movie a left join reviewer b on a.mo=b.rev_id where b,num_o_ratings = 'null' 

SELECT mov_title
FROM movie
WHERE mov_id NOT IN (
SELECT mov_id 
FROM rating
);

select mov_title from movie where mov_id = '905' and '907' and '917'
SELECT mov_title
FROM movie
WHERE mov_id in (905, 907, 917);

select mov_title mov_year from movie where mov_title like '%Boogie Nights%' ----- like sorry

select act_id,act_fname,act_lname from actor where act_fname like 'Woody%' and act_lname like '%Allen'
SELECT act_id
FROM actor 
WHERE act_fname='Woody' 
AND act_lname='Allen';
