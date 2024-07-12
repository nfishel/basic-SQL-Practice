-- set up for our select statements
.open d1schools.db
.mode box
.headers on
-- .schema d1schools


.print "List all the d1 schools in Indiana"
SELECT university, common_name, city
  FROM d1schools
  WHERE state = "Indiana";

.print "\n\n List all the schools in the Ivy League conference"
SELECT common_name, conference, enrollment
  FROM d1schools
  WHERE conference = "Ivy League";

.print "\n\n How about the schools in the Big Ten?"
SELECT common_name, conference, city, state
  FROM d1schools
  WHERE conference LIKE "big ten%";


.print "\n\n Find all the schools that have a team name with the word 'hawk'"
SELECT common_name, team, state
  FROM d1schools
  WHERE team LIKE "%hawks%";

.print "\n\n List all the schools with an enrollment that less than HSE"
SELECT common_name, conference, enrollment
  FROM d1schools
  WHERE enrollment <= 3500;

.print "\n\n What is the biggest enrollment?"
SELECT MAX(enrollment), common_name FROM d1schools
  WHERE enrollment <= 3500;

.print "\n\n What is the smallest enrollment?"
SELECT MIN(enrollment), common_name FROM d1schools
  WHERE enrollment <= 3500;

.print "\n\n How many d1 schools are smaller than HSE"
SELECT COUNT(*) as "total schools" FROM d1schools
  WHERE enrollment <= 3500;

.print "\n\n How many schools are in each conference?"
SELECT COUNT(id) as total, conference
  FROM d1schools
  GROUP BY conference;

.print "\n\n Whate are the 5 smallest d1 schools (enrollment wise) in California?"
SELECT common_name, state, enrollment
  FROM d1schools
  WHERE state = "California"
  ORDER BY enrollment LIMIT 5;