create or replace package calisanlar as
  procedure zam_yap(p_zamorani in number);
  function bolum_adi(p_deptno in dept.deptno%type) return dept.dname%type;
end calisanlar;
/
create or replace package body calisanlar as
  procedure zam_yap(p_zamorani in number)
  is
  begin
    update emp set sal = sal + (sal * p_zamorani);
    commit;
  end zam_yap;
  
  function bolum_adi(p_deptno in dept.deptno%type) return dept.dname%type
  is
    v_dname dept.dname%type;
  begin
    select dname into v_dname from dept where deptno = p_deptno;
    return v_dname;
    exception when no_data_found then
      return('Hatalý deptno!');
  end bolum_adi;
end calisanlar;
/
execute calisanlar.zam_yap(0.1);
/
select calisanlar.bolum_adi(20) from dual;
/
select ename, deptno, calisanlar.bolum_adi(deptno) from emp;
/
set serveroutput on;
declare
  cursor oku is select ename, sal, deptno, calisanlar.bolum_adi(deptno) bolumadi from emp;
  r_oku oku%rowtype;
begin
  open oku;
  loop
    fetch oku into r_oku;
    exit when oku%notfound;
    dbms_output.put_line(r_oku.ename || ' ' || r_oku.sal || ' ' || r_oku.deptno || ' - ' || r_oku.bolumadi);
  end loop;
  close oku;
end;