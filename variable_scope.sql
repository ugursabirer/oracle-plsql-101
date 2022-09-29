set serveroutput on;
declare
  sayi1 number := 10;
  sayi2 number := 20;
  sayi3 number := 30;
begin
  dbms_output.put_line('Sayı 1 Global Variable ' || sayi1);
  dbms_output.put_line('Sayı 2 Global Variable ' || sayi2);
  dbms_output.put_line('Sayı 3 Global Variable ' || sayi3);
  declare
    sayi1 number := 40;
    sayi2 number := 50;
    sayi4 number := 60;
  begin
    dbms_output.put_line('Sayı 1 Local Variable ' || sayi1);
    dbms_output.put_line('Sayı 2 Local Variable ' || sayi2);
    dbms_output.put_line('Sayı 3 Global Variable ' || sayi3);
    dbms_output.put_line('Sayı 4 Local Variable ' || sayi4);
  end;
end;