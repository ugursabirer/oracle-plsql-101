create table emp_log(
  sirano      number,
  neyapti     varchar2(10),
  kim         varchar2(30),
  nezaman     date,
  bilgisayar  varchar2(50),
  ipadresi    varchar2(15),
  empno       number(4),
  ename       varchar2(10),
  job         varchar2(9),
  mgr         number(4),
  hiredate    date,
  sal         number(7, 2),
  comm        number(7, 2),
  deptno      number(2)
);
/
create sequence emp_seq
minvalue 1
maxvalue 9999
increment by 1
start with 1
nocycle
cache 20;