create table guestbook(
    no number(10) primary key,
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date
);

select *
from guestbook;

create sequence seq_no
increment by 1
start with 1;

insert into guestbook
values(seq_no.nextval, 'test', '123', 'hi', sysdate);

delete from guestbook
where no = 입력값;

select no,
       name,
       password,
       content,
       reg_date
from guestbook;

commit;