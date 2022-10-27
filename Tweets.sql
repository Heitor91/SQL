Create database tests;

Use tests;

create table tweets 
(
tweet_id smallint auto_increment primary key,
user_name varchar(50) not null,
tweet_text varchar(200) not null,
likes int 
);

show tables;

show columns from tweets;

DESC tweets;

drop table tweets;

insert into tweets(user_name, tweet_text, likes) values('tweet_vanguard', 'Im the FIRST, and is a honor', 56);

select * from tweets;

insert into tweets(user_name, tweet_text, likes) 
values('newborn_net', 'HELLOOOOO WOOOOOOOOORLD, its great day', 235),
('latindoAmericano', 'the auauauauauauauauauauau', 4680),
('TIguy', 'test, and its ok, proceeed', 6);
insert into tweets(user_name, tweet_text, likes) values('_arkambatmamjoker_@#_arkambatmamjoker_@#_arkambatmamjoker_@#', 'sdbsbvlbxhjb', 10000000000000000000000000);

show warnings;

