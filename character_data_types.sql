set serveroutput on;
declare
  kar1 char(15) := 'PL/SQL';
  kar2 nchar(15) := '������������';
  kar3 varchar2(15) := 'PL/SQL';
  kar4 nvarchar2(15) := 'PL/SQL';
  kar5 long := 'Bu de�i�ken tipine koskoca bir kitap s��ar.';
begin
  dbms_output.put_line('Karakter 1 (char) ' || kar1 || ' ' || length(kar1));
  dbms_output.put_line('Karakter 2 (ncahr) ' || kar2 || ' ' || length(kar2));
  dbms_output.put_line('Karakter 3 (varchar2) ' || kar3 || ' ' || length(kar3));
  dbms_output.put_line('Karakter 4 (nvarhcar2) ' || kar4 || ' ' || length(kar4));
  dbms_output.put_line('Karakter 5 (long) ' || kar5 || ' ' || length(kar5));
end;

select rowid, empno, ename from emp;