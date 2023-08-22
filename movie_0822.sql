use test; /*데이터 베이스 접속*/

select * /*플레이어 테이블 모든 컬럼 조회*/
from player;

create table alpaco(
id Int,
student_name VARCHAR(10), /* 바차 사이즈: 10바이트 , varchar: 가변문자(variable character)*/
student_age Int
);

create table theater(
theater_num Int primary key,
theater_name VARCHAR(10),
theather_location VARCHAR(10)
);

create table movie(
movie_num Int primary key auto_increment, /* 1씩 증가할 것은 확실하므로, 마지막 넘버 기준으로 +1 */
theater_num Int, /*theater 테이블에 theater_id 컬럼의 데이터 타입과 동일해야 한다. */
movie_name VARCHAR(10) not null, /* 비우면 안된다*/
movie_time varchar(10) not null,
CONSTRAINT MOVIE_PK PRIMARY  KEY (movie_num), 
/* 제약조건은 constraint로 시작하고, MOVIE_PK는 제약조건 명이다. 
그 뒤에 오는 primary key는 제약조건 종류, 그리고 그 뒤에 오는 건 제약 조건 컬럼 명시*/
CONSTRAINT MOVIE_PK FOREIGN KEY (theater_num) REFERENCES theater(theater_num)
/* 제약조건은 constraint로 시작, PLAYER_FK: 제약조건 명, FOREIGN KEY: 외래키로 사용할 컬럼,
REFERENCES TEAM(TEAM_ID): 팀 테이블에 팀 아이디를 참조하겠다*/
);