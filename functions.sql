create or replace function hipotenus (a in number, b in number) return number
is
  sonuc number;
begin
  sonuc := (a * a) + power(b, 2);
  sonuc := sqrt(sonuc);
  return(sonuc);
end;
/
select hipotenus(3, 4) from dual;
/
set serveroutput on;
begin
  dbms_output.put_line(hipotenus(3, 4));
end;
/--second example
create or replace function get_dname_f (p_deptno dept.deptno%type) return varchar2
is
  v_dname dept.dname%type;
begin
  select dname into v_dname from dept where deptno = p_deptno;
  return(v_dname);
  exception when no_data_found then 
    return('Hatalý deptno!');
end;
/
select get_dname_f(5) from dual;
/
select ename, sal, deptno, get_dname_f(deptno) bolum_adi from emp;
/
set serveroutput on;
declare
  cursor oku is select ename, sal, deptno from emp;
  r_oku oku%rowtype;
  v_dname dept.dname%type;
begin
  open oku;
  loop
    fetch oku into r_oku;
    exit when oku%notfound;
    v_dname := get_dname_f(r_oku.deptno);
    dbms_output.put_line(r_oku.ename || ' ' || r_oku.sal || ' ' || r_oku.deptno || ' ' || v_dname);
  end loop;
  close oku;
end;
/--third example
create or replace function faktoriyel(x number) return number
is
  y number;
begin
  if x = 0 then
    y := 1;
  else
    y := x * faktoriyel(x - 1);
  end if;
  return y;
end;
/
select faktoriyel(5) from dual;
/
set serveroutput on;
declare
  sonuc number;
  n number;
begin
  n := 5;
  sonuc := faktoriyel(n);
  dbms_output.put_line(n || '! = ' || sonuc);
end;