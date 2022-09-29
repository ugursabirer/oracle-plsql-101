create or replace procedure get_dname (p_deptno in dept.deptno%type, p_dname out dept.dname%type)
is
begin
  select dname into p_dname from dept where deptno = p_deptno;
  exception 
  when no_data_found then
    p_dname := null;
end;

set serveroutput on;
declare
  v_dname dept.dname%type;
begin
  /*get_dname(10, v_dname);
  dbms_output.put_line('10 Nolu Bölümün Adý = ' || v_dname);*/
  get_dname(5, v_dname);
  dbms_output.put_line('10 Nolu Bölümün Adý = ' || v_dname);
end;
/
set serveroutput on;
declare
  cursor c_emp is select empno, ename, deptno from emp;
  r_emp c_emp%rowtype;
  
  v_dname dept.dname%type;
begin
  /*open c_emp;
  loop
    fetch c_emp into r_emp;
    exit when c_emp%notfound;
    get_dname(r_emp.deptno, v_dname);
    dbms_output.put_line('Calisan No = ' || r_emp.empno || ', Adý = ' || r_emp.ename ||
      ', Bölüm No = ' || r_emp.deptno || ', Adý = ' || v_dname);
  end loop;
  close c_emp;*/
  
  for i in c_emp loop
    get_dname(i.deptno, v_dname);
    dbms_output.put_line('Calisan No = ' || i.empno || ', Adý = ' || i.ename ||
      ', Bölüm No = ' || i.deptno || ', Adý = ' || v_dname);
  end loop;
end;
/--NonStored
set serveroutput on;
declare
  sonuc number;
  ne varchar2(15);
procedure alan(x in number, y in number, z out number, alancevre in out varchar2)is
begin
  if alancevre = 'A' then
    z := x * y;
    alancevre := 'ALAN';
  elsif alancevre = 'C' then
    z := 2 * (x + y);
    alancevre := 'CEVRE';
  end if;
end;

begin
  ne := 'A';
  alan(5, 6, sonuc, ne);
  dbms_output.put_line(ne || ' = ' || sonuc);
  ne := 'C';
  alan(5, 6, sonuc, ne);
  dbms_output.put_line(ne || ' = ' || sonuc);
end;