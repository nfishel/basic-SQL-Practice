-- Possible solutions to Part 1 from the games table

-- Question 1
SELECT name, released
    FROM games
    WHERE released = 1985;

-- Question 2
SELECT COUNT(*) as "-- of games with at most 7 players", max_players
    FROM games
    WHERE max_players = 7;

-- Question 3
SELECT name, avg_time
    FROM games
    WHERE name LIKE "%catan%";

-- Question 4
SELECT name, avg_time
    FROM games
    WHERE name LIKE "%war%"
    ORDER BY avg_time DESC LIMIT 3;

-- Question 5
SELECT COUNT(*) AS "-- of games with trading"
    FROM games
    WHERE mechanics LIKE "%trading%";

-- Question 6
SELECT COUNT(*) AS "-- of games", released
    FROM games
    WHERE released BETWEEN 1990 and 1999
    GROUP BY released;

-- Question 7
SELECT avg_time, name, designer
    FROM games
    WHERE category LIKE "%card game%"
    ORDER BY avg_time DESC LIMIT 6;

-- Question 8
SELECT COUNT(*) as "-- of games with 1hr or less time"
    FROM games
    WHERE avg_time <= 60;

-- Question 9
SELECT MAX(max_players) AS "most players for games over 5hrs"
    FROM games
    WHERE avg_time > 300;
