# CHAR e VARCHAR diff

create table char_test(
txt_char char(4),
txt_var varchar(10)
);

insert into char_test(txt_char,txt_var) values
('a', 'a'),
('abc', 'abc'),
('abcd', 'abcd'),
('abcdefg', 'abcdefg');

select * from char_test;


select curdate(), curtime(), now();