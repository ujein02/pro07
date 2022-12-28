create table sample7(id varchar2(20), pw varchar2(20));

insert into sample values('kkk','1234');
insert into sample values('test','1234');

commit;

-- 공지사항
CREATE table notice(tno number primary key, 
title varchar2(100) not null, 
content varchar2(1000) not null, 
writer varchar2(20), 
regdate date default sysdate, 
visited number default 0);

create sequence noti_seq;

commit;

insert into notice values(noti_seq.nextval, '테스트 제목1', '테스트  내용1', 'admin', sysdate, 0);
