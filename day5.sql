select * from emp

select A.name as emp_name , B.name as manager_name from emp A, emp B where a.manager=b.empid and (A.empid = 4 or A.empid = 6) order by A.empid; 


select  a.empid, A.name as emp_name , B.name as manager_name from emp A, emp B where a.manager=b.empid and (b.name = 'Palash Roy'); 


select * from game_it
select * from goal_it
select * from eteam_it
drop table eteam_it;
select goal_it.player, goal_it.matchid, GAME_IT.STADIUM, game_it.mdate from game_it join goal_it on  game_it.id=goal_it.matchid where goal_it.teamid='GER';

select game_it.team1, game_it.team2, goal_it.player from game_it join goal_it on game_it.id=goal_it.matchid where goal_it.player like 'Mario %';

select goal_it.teamid, goal_it.player, eteam_it.coach from goal_it join eteam_it on eteam_it.id=goal_it.matchid where goal_it.gtime <=10;

select game_it.mdate, eteam_it.teamname from game_it join eteam_it on game_it.id=eteam_it.id where eteam_it.coach like 'Fernando Santos';

create table eteam_it (id varchar(100) primary key, teamname varchar(100), coach varchar(100));
insert into eteam_it values ('POL', 'Poland', 'Franciszek Smuda');
insert into eteam_it  values ('RUS', 'Russia', 'Dick Advocaat');
insert into eteam_it values ('CZE', 'Czech Republic', 'Michal Bílek');
insert into eteam_it values('GRE', 'Greece', 'Fernando Santos');
insert into eteam_it values ('NED', 'Netherlands', 'Bert van Marwijk');
insert into eteam_it values ('DEN', 'Denmark', 'Morten Olsen');
insert into eteam_it values ('GER', 'Germany', 'Joachim Löw');
insert into eteam_it values ('POR', 'Portugal', 'Paulo Bento');
insert into eteam_it values ('ESP', 'Spain', 'Vicente del Bosque');
insert into eteam_it values ('ITA', 'Italy', 'Cesare Prandelli');
insert into eteam_it values ('IRL', 'Republic of Ireland', 'Giovanni Trapattoni');
insert into eteam_it values ('CRO', 'Croatia', 'Slaven Bilic');
insert into eteam_it values ('UKR', 'Ukraine', 'Oleh Blokhin');
insert into eteam_it values ('SWE', 'Sweden', 'Erik Hamrén');
insert into eteam_it values ('ENG', 'England', 'Roy Hodgson');
insert into eteam_it values ('FRA', 'France', 'Laurent Blanc');

select goal_it.player from game_it join goal_it on game_it.id=goal_it.matchid where game_it.stadium like 'National Stadium, Warsaw';

select goal_it.player from game_it join goal_it on game_it.id=goal_it.matchid where goal_it.teamid != 'GER' and game_it.team1='GER' or game_it.team2='GER';
add column count varchar(*); 
select game_it.stadium, count(*) from game_it join goal_it on game_it.id=goal_it.matchid group by game_it.stadium;



