create table messages (
    write_num number primary key,
    writer varchar(20) not null,
    message varchar(300) not null
);

drop table messages;

create sequence messages_seq
start with 1
increment by 1
nomaxvalue
nocache;

insert into messages (write_num,writer,message) values(1002, 'Cafe Latte', 'messageeeee');
select * from messages;

-------------------------------------------------------------------------------------------
create table movies (
    id number primary key,
    title varchar(100) not null,
    genre varchar(20) not null,
    launch_date timestamp default sysdate
);

drop table movies;

create sequence id_seq
start with 1001
increment by 1
nomaxvalue
nocache;

drop sequence id_seq;

insert into movies values(id_seq.nextval, 'Romeo', 'romance', sysdate);

select * from movies;

-------------------------------------------------------------------------------------------
create table members(
id varchar(100) primary key,
pw varchar(300) not null,
name varchar(100) not null,
phone varchar(100),
email varchar(100),
zipcode varchar(50),
address1 varchar(100),
address2 varchar(100),
signup_date timestamp default sysdate
);

drop table members;


select * from members;
delete from members where id = 'testtset';
commit;

ALTER TABLE members MODIFY(id varchar(100) primary key);
-----------------------------------------------------------------------------------------
create table freeBoard(
    freeBoard_seq number primary key,
    writer varchar(100) not null,
    title varchar(300) not null,
    content varchar(4000) not null,
    write_date timestamp default sysdate not null,
    view_count number not null
);
create sequence freeBoard_seq
start with 1
increment by 1
nomaxvalue
nocache;

select * from (select freeBoard.*, row_number() over(order by write_date desc) rn from freeBoard) where rn between 1 and 5;
insert into freeBoard values(freeBoard_seq.nextval,'abg1418','test','test',sysdate,0);
commit;
select * from freeBoard;
delete from freeBoard where writer = 'tset';
drop table freeBoard;
drop sequence board_seq;
---------------------------------------------------------------------------------------------
create table comments(
    comment_num number primary key,
    writer varchar(20) not null,
    contents varchar(900) not null,
    write_date timestamp default sysdate not null,
    post_num number not null
);

create sequence comment_num
start with 1
increment by 1
nomaxvalue
nocache;

select * from comments;
-------------------------------------------------------------------------------------
create table files(
    file_seq number primary key,
    origin_name varchar(300) not null,
    sys_name varchar(300) not null,
    parent_seq number not null
);
drop table files;
create sequence file_seq
start with 1
increment by 1
nocache nomaxvalue;
select freeBoard_seq.nextval freeBoard_seq from dual;
select * from files;
commit;