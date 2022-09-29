set serveroutput on;
declare
  cursor c_emp is select empno, ename from emp;
  v_empno emp.empno%type;
  v_ename emp.ename%type;
begin
  open c_emp;
  loop
    fetch c_emp into v_empno, v_ename;
    exit when c_emp%notfound;
    dbms_output.put_line(v_empno || ' ' || v_ename);
  end loop;
  close c_emp;
end;
/
set serveroutput on;
declare
  cursor c_emp is select empno, ename from emp;
  c_rec c_emp%rowtype;
begin
  open c_emp;
  loop
    fetch c_emp into c_rec;
    exit when c_emp%notfound;
    dbms_output.put_line(c_rec.empno || ' ' || c_rec.ename);
  end loop;
  close c_emp;
end;