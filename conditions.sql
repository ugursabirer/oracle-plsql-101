set serveroutput on;
declare
  x number := 10;
  y number := 10;
begin
  /*if x > y then
    dbms_output.put_line('x b�y�kt�r y');
  else
    dbms_output.put_line('y b�y�kt�r x');
  end if;*/
  
  if x > y then
    dbms_output.put_line('x b�y�kt�r y');
  elsif x = y then
    dbms_output.put_line('x e�ittir y');
  else
    dbms_output.put_line('y b�y�kt�r x');
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
    dbms_output.put_line(rastgele_sayi || ' say�s� �ift');
  when 1 then
    dbms_output.put_line(rastgele_sayi || ' say�s� tek');
  else
    dbms_output.put_line(rastgele_sayi || ' bilinmiyor');
  end case;
end;