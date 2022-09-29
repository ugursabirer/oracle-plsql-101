create table emp_log2 (
  islem varchar2(250),
  kim varchar2(30),
  nezaman date,
  v_empno number(5)
);
/
create or replace trigger emp_trg2
after update on emp
for each row

declare

begin
  insert into emp_log2(islem, kim, nezaman, v_empno)
  values('EMP Tablosu Update Edildi', user, sysdate, nvl(:new.empno, :old.empno));
end;
/
update emp set comm = nvl(comm, 0) + 300 where empno = 7788;