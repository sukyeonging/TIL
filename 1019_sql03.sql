# city 테이블에서 나라별 도시의 갯수를 출력
SELECT CountryCode, COUNT(Countrycode) AS count
FROM city
GROUP BY CountryCode


# countrylanguage 테이블에서 전체 언어의 갯수를 출력
SELECT count(distint(language))
FROM countrylanguage


# 대륙별 인구수와 GNP의 최대값을 출력 
SELECT continent, sum(population), sum(GNP),
SUM(GNP) / SUM(population)
FROM country
GROUP BY continent

# 대륙별 전체인구를 구하고 5억 이상인 대륙만 출력
# HAVING : group by가 실행되고 난 결과에 조건을 추가
SELECT continent, SUM(population) AS data
FROM country 
GROUP BY continent
#WHERE SUM(population) > 500000000  : where는 group by 하기 전에!!
HAVING SUM(population) > 500000000

