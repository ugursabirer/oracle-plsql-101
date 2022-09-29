set serveroutput on;
declare
  v_empno emp.empno%type;
  v_ename emp.ename%type;
  v_sal emp.sal%type;
  v_deptno emp.deptno%type;
  v_dname dept.dname%type;
begin
  select empno, ename, sal, deptno into v_empno, v_ename, v_sal, v_deptno from emp where empno = (select max(empno) from emp);
  select dname into v_dname from dept where deptno = v_deptno;
  dbms_output.put_line('EMPNO = ' || v_empno || ', ENAME = ' || v_ename|| ', SALARY = ' || v_sal || ', DEPTNO = ' || v_deptno || ', DNAME = ' || v_dname);
end;