--table based
set serveroutput on;
declare
  emp_rec emp%rowtype;
begin
  select * into emp_rec from emp where rownum = 1;
  dbms_output.put_line(emp_rec.empno || ' ' || emp_rec.ename || ' ' || emp_rec.sal);
end;
/--cursor based
set serveroutput on;
declare
  cursor c_emp is select * from emp;
  c_rec c_emp%rowtype;
begin
  open c_emp;
  loop
    fetch c_emp into c_rec;
    exit when c_emp%notfound;
    dbms_output.put_line(c_rec.empno || ' ' || c_rec.ename || ' ' || c_rec.sal);
  end loop;
  close c_emp;
end;