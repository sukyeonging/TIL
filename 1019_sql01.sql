# Server - Database = Table

# 1. Create

# 1-1. 데이터 베이스

SHOW DATABASES; # 현재 데이터 베이스 확인

# 생성
CREATE DATABASE test;

# 선택
USE test;

# 현재 확인
SELECT DATABASE();

# 2. Table
CREATE TABLE USER1(
	user_id INT,
	NAME VARCHAR(20),
	email VARCHAR(30),
	age INT(3),
	rdate DATE 
)


CREATE TABLE USER2(
	user_id INT PRIMARY KEY auto_increment,
	NAME VARCHAR(20) NOT null,
	email VARCHAR(30) UNIQUE NOT null,
	age INT(3) DEFAULT 30,
	rdate TIMESTAMP  
)



# 2. 수정 Alter

# 2-1 데이터 베이스
SHOW VARIABLES LIKE "character_set_database"
ALTER DATABASE test CHARACTER SET = UTF8


# 2-2 테이블
ALTER TABLE USER2 ADD tmp TEXT
ALTER TABLE USER2 MODIFY COLUMN tmp INT(3)
ALTER TABLE USER2 DROP tmp


# 3. Drop

# 3-1 데이터 베이스 삭제
CREATE DATABASE tmp
DROP DATABASE test
SHOW DATABASES

# 3-2 테이블
DROP TABLE USER3
SELECT DATABASE()



# 4. Insert

INSERT INTO USER1(user_id, NAME, email, age, rdate)
VALUE(1, "kyeong", "kimsk427@gmail.com, 27, now())



# 5. SELECT : 데이터 조회
SELECT user_id, NAME, age
FROM USER1

SELECT *
FROM USER1

SELECT user_id AS "ID", NAME AS "UserName", age AS "AGES"
FROM USER1


# DISTINCT 중복제거
SELECT NAME
FROM USER1


# WHERE 조건검색
# 30세 이상인 사용자를 검색해서 이름의 종류갯수를 출력
SELECT count(DISTINCT(NAME))
FROM USER1
WHERE age >= 30

SELECT *
FROM USER1
WHERE age > 20 age < 40

# BETWEEN  A AND B
SELECT *
FROM USER1
WHERE age BETWEEN 20 AND 39

# ORDER BY 정렬
SELECT *
FROM USER1
ORDER BY age DESC

SELECT *
FROM USER1
ORDER BY NAME, age DESC 



# 나이가 20세에서 40세 사이에 있는 사용자를 이름순으로 정렬ㄹ하고
# 중복데이터를 제거해서 출력
SELECT  DISTINCT(NAME)
FROM USER1
WHERE age BETWEEN 20 AND 39
ORDER BY NAME DESC


# concat
SELECT NAME, age, CONCAT(NAME, "(", age, ")") AS "name_age"
FROM USER1

# like : where절에서 특정 문자열이 들어간 데이터 조회
SELECT *
FROM USER1
-- WHERE email LIKE "%@daum.%"
WHERE email not LIKE "%net"


# in : 여러개의 조건을 조회할때 사용
SELECT *
FROM USER1
/* where name="andy" or name="peter" or name="po" */
WHERE name IN (
	SELECT DISTINCT(NAME)
	FROM USER1
	WHERE age > 30
)


# LIMIT
SELECT *
FROM USER1
LIMIT 3, 5  # 위에서부터 3번째부터 5개 출력.



# 6. UPDATE : 수정

UPDATE USER1
SET age=20, rdate="2019-12-12"
WHERE age BETWEEN 20 AND 29

SELECT *
FROM USER1
WHERE age BETWEEN 20 AND 29


# 7. DELETE

DELETE FROM USER1
WHERE rdate > "2019-11-01"

SELECT *
FROM USER1

world
