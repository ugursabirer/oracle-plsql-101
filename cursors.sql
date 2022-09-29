set serveroutput on;
declare
  cursor c_dept is select deptno, dname from dept;
  v_dept c_dept%rowtype;
  
  cursor c_emp (p_deptno dept.deptno%type) is 
  select empno, ename, sal 
  from emp 
  where deptno = p_deptno;
  v_emp c_emp%rowtype;
  
  toplam_maas emp.sal%type;
begin
  open c_dept;
  loop
    fetch c_dept into v_dept;
    exit when c_dept%notfound;
    dbms_output.put_line('Departman No = ' || v_dept.deptno || ', Departman Adý = ' || v_dept.dname);
    
    toplam_maas := 0;
    open c_emp(v_dept.deptno);
    loop
      fetch c_emp into v_emp;
      exit when c_emp%notfound;
      dbms_output.put_line('Çalýþan No = ' || v_emp.empno || ', Çalýþan Adý = ' || v_emp.ename || ', Çalýþan Maaþý = ' || v_emp.sal);
      toplam_maas := toplam_maas + v_emp.sal;      
    end loop;
    dbms_output.put_line(v_dept.dname || ' Departmanýnýn Toplam Maaþý = ' || toplam_maas);
    dbms_output.put_line('----------');
    close c_emp;
  end loop;
  close c_dept;
end;