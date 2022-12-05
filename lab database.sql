drop table Writer cascade constraint;
create table Writer
(W_id number (3) PRIMARY KEY ,
W_name varchar2 (9),
phone number (10),
state varchar2 (10) ) ;
drop table Publishers cascade constraint; create table Publishers (Publishers_name varchar2 (20) primary key , Location varchar2 (15) , size_ varchar2 (15) );
 drop table Novel cascade constraint; 
 create table Novel (N_name varchar2 (15) primary key , price number (4), Genre varchar2 (15) , Number_of_page number (3), W_id number (3) , Publishers_name varchar2 (20),
 CONSTRAINT w1_FK FOREIGN KEY (Publishers_name) references Publishers (Publishers_name), CONSTRAINT w_FK FOREIGN KEY (W_id) references Writer (W_id)
) ;
-- insertion
insert into Writer values ( 101 , 'Leon', 7156351505, 'Texas' ); insert into Writer values ( 149 , 'George', 7126483998 , 'Boston' ); insert into Writer values (150 , 'Alyson' , 7159746632 , 'Texas' ); insert into Writer values (157 , 'Jasmine' , 7987654045 , 'Washington'
);
insert into Publishers values ( 'Canelo', 'London', 'Small press'
);
insert into Publishers values ( 'Fair Winds Press' , ' Boston' , 'Mid size'
);
insert into Publishers values ( 'Knopf Doubleday' , 'New York' , 'Mid size'
);
insert into Publishers values ( 'Aria Publishing', 'London', 'Small press'
);
insert into Novel values ( 'Lolita' , 200 , 'Horror', 180,150 , 'Aria Publishing' ); insert into Novel values ( 'Middle March' , 130 , 'Fantasy',220,101, 'Canelo' ); insert into Novel values ( 'The Big Sleep' , 170 , 'Fantasy', 100 ,149 , 'Fair Winds Press'
);
insert into Novel values ( 'The Proposal' , 49 , 'Romance', 120,150 , 'Knopf Doubleday' ); insert into Novel values ( 'The game' , 88 , 'Romance', 5,157 , 'Aria Publishing' ); insert into Novel values ( 'Sara happy' , 25 , 'Crime', 59,101 , 'Aria Publishing' );

----
--1

select count (*)
from writer 
where state ='Texas';

--2

select W_name
from writer 
where W_name like '%on'
order by W_id desc;

--3
select publishar_name, count (*)
from novel 
group by publishar_name;

--4
select genre ,Avg(price)
from novel
GROUP by genre
having avg(price)>120;

--5
select n.name ,w.id 
from writer w, novel n
where n.name=w.id and genre ='romant';

--6
create view  Vpub AS 
select publishar_name , size_
from publishar 
where size_='small_press';
--

select min(number_of_pages)
from novel

--8
update writer set name='ooo' 
where id ='101'

select *
from writer

