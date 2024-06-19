-- Possible solutions to Part 2 from the coasters table

-- Question 1
SELECT name, height, year_opened, park 
    FROM coasters 
    WHERE park = "Kings Island";

-- Question 2
SELECT COUNT(*) as "# of coasters at Cedar Point without inversions" 
    FROM coasters
    WHERE park = "Cedar Point" AND inversion = "No";

-- Question 3
SELECT name, speed, country, height 
    FROM coasters 
    ORDER BY height DESC LIMIT 5;

-- Question 4
SELECT name, city, park, speed 
    FROM coasters 
    WHERE country = "USA" 
    ORDER BY speed DESC LIMIT 1;

-- Question 5
SELECT name, park, MIN(length) AS "shortest length" 
    FROM coasters;

    -- OR you could have any or all of these...
    SELECT name, park, length 
        FROM coasters 
        WHERE length in (SELECT min(length) 
        FROM coasters);

-- Question 6
SELECT DISTINCT park AS "parks with a coaster that has more than 6 inversions", num_inversions 
    FROM coasters 
    WHERE num_inversions > 6;

-- Question 7
SELECT AVG(height) AS "average height", park 
    FROM coasters 
    WHERE park LIKE "%six flags%" GROUP BY park 
    ORDER BY "average height" DESC;

-- Question 8
SELECT name, park, speed, height, length, country 
    FROM coasters 
    WHERE country = "Brazil" 
    ORDER BY name LIMIT 5;

