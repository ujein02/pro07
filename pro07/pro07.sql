create table sample7(id varchar2(20), pw varchar2(20));

insert into sample values('kkk','1234');
insert into sample values('test','1234');

commit;

-- 공지사항
CREATE table notice(tno int primary key, 
title varchar2(100) not null, 
content varchar2(1000) not null, 
author varchar2(20), 
regdate date default sysdate, 
visited int default 0);

create sequence noti_seq;

commit;

insert into notice values(noti_seq.nextval, '테스트 제목1', '테스트  내용1', 'admin', sysdate, 0);

drop table notice;

drop sequence noti_seq;


select * from notice where tno='1';

-- 회원
create table me_user(
no number primary key, 
id varchar2(20) not null, 
pw varchar2(500) not null, 
name varchar2(20),
tel varchar2(20),
addr varchar2(50),
email varchar2(20),
regdate date default sysdate
);




-- 묻고 답하기_qna(글번호, 작성자, 글제목, 글내용, 작성일, 읽어본 횟수, 글그룹번호, 답변수준, 글깊이)
create table me_qna(
    qno number primary key,
    author varchar2(100) not null,
    title varchar2(255) not null,
    content varchar2(1000) not null,
    regdate date default sysdate,
    hit number default 0,
    lev number,
    parno number,
    sec varchar2(10)
);

create sequence qna_mseq;

commit;

insert into me_qna values(qna_mseq.nextval, 'test', '문의합니다 제목1', '문의합니다  내용1', sysdate, 0);
INSERT INTO qna(title, content, author, lev, parno, sec) VALUES (?,?,?,?,?,?);