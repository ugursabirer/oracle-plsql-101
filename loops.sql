set serveroutput on;
declare
  a number := 50;
  i number := 0;
begin
  loop
    /*if a < 0 then
      exit;
    end if;*/
    i := i + 1;
    dbms_output.put_lýne(i || '. Sayý = ' || a);
    a := a - 5;
    exit when a < 0;
  end loop;
  dbms_output.put_line('Son sayý = ' || a);
end;
/ -- while loop
set serveroutput on;
declare
  a number(2) := 50;
  i number(2) := 0;
begin
  while a >= 0 loop
    i := i + 1;
    dbms_output.put_line(i || '. Sayý = ' || a);
    a := a - 5;
  end loop;
  dbms_output.put_line('Son sayý = ' || a);
end;
/ -- for loop
set serveroutput on;
declare
  i number := 0;
begin
  for a in 10..20 loop
    i := i + 1;
    dbms_output.put_line(i || '. Sayý = ' || a);
  end loop;
end;
/
set serveroutput on;
declare
  
begin
  for a in (select empno, ename, sal from emp) loop
    dbms_output.put_line('EMPNO = ' || a.empno || ', ENAME = ' || a.ename || ', SAL = ' || a.sal);
  end loop;
end;
/ -- nested loop
set serveroutput on;
declare
  i number;
  j number;
begin
  i := 1;
  loop
    j := 1;
    loop
      dbms_output.put(lpad(to_char(i * j), 5, ' '));
      j := j + 1;
      if j > 10 then
        exit;
      end if;
    end loop;
    dbms_output.put_line(' ');
    i := i + 1;
    exit when i > 10;
  end loop;
end;