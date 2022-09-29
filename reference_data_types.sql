desc emp;

set serveroutput on;
declare
  v_empno emp.empno%type;
  v_ename emp.ename%type;
begin
  select empno, ename into v_empno, v_ename from emp where rownum = 1;
  dbms_output.put_line('EMPNO = '|| v_empno || ', ENAME = ' || v_ename);
end;
/
set serveroutput on;
declare
  v_emp emp%rowtype;
begin
  select * into v_emp from emp where rownum = 1;
  dbms_output.put_line('EMPNO = ' || v_emp.empno || ', ENAME = ' || v_emp.ename || ', JOB = ' || v_emp.job);
end;