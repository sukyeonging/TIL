# quiz 1

SELECT DISTINCT(Continent)
FROM country




# quiz 2
# "KOR"

SELECT NAME, population
FROM city
WHERE CountryCode = "KOR" and Population >= 1000000 
ORDER BY population DESC


# quiz 3

SELECT NAME, countrycode, population
FROM city
WHERE population between 8000000 and 10000000
ORDER BY population DESC

# quiz 4

SELECT CODE, concat(NAME, "(", IndepYear, ")"), Continent, Population
FROM country
WHERE IndepYear BETWEEN 1940 AND 1950
ORDER BY IndepYear


# quiz 5

SELECT CountryCode, LANGUAGE, Percentage
FROM countrylanguage
WHERE LANGUAGE IN ("English" , "Spanish" , "Korean")
and percentage  >= 95
ORDER BY percentage DESC


# quiz 6

SELECT CODE, NAME, continent, governmentform, population
FROM country
WHERE CODE like "A%"  AND  Governmentform LIKE "%Republic%"
