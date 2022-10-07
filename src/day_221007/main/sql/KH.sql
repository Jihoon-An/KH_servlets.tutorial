create table messages (
    num number primary key,
    writer varchar(20) not null,
    message varchar(300) not null
);

drop table messages;

create sequence messages_seq
start with 1
increment by 1
nomaxvalue
nocache;