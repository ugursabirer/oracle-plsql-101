create or replace trigger terfi
before update of job on emp
for each row
when (new.job = 'MANAGER')

declare

begin
  :new.comm := 1500;
end;
/
update emp set job = 'MANAGER' where ename = 'SMITH';
/
update emp set job = 'CLERK' where ename = 'TURNER';