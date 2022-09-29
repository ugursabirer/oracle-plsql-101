set serveroutput on;
declare
  x number := 10;
  y number := 10;
begin
  /*if x > y then
    dbms_output.put_line('x büyüktür y');
  else
    dbms_output.put_line('y büyüktür x');
  end if;*/
  
  if x > y then
    dbms_output.put_line('x büyüktür y');
  elsif x = y then
    dbms_output.put_line('x eşittir y');
  else
    dbms_output.put_line('y büyüktür x');
  end if;
end;
/
set serveroutput on;
declare
  rastgele_sayi number(5);
begin
  rastgele_sayi := dbms_random.value(1, 9) * 100;
  
  case mod(rastgele_sayi, 2)
  when 0 then
    dbms_output.put_line(rastgele_sayi || ' sayısı çift');
  when 1 then
    dbms_output.put_line(rastgele_sayi || ' sayısı tek');
  else
    dbms_output.put_line(rastgele_sayi || ' bilinmiyor');
  end case;
end;