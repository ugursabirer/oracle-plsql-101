set serveroutput on;
declare
  say1  integer;
  say2  real;
  say3  double precision;
  say4  pls_integer;
  say5  binary_integer;
  say6  binary_double;
begin
  say1 := 1000/3;
  say2 := 1000/3;
  say3 := 1000/3;
  say4 := 1000/3;
  say5 := 1000/3;
  say6 := 1000/3;
  dbms_output.put_line('Sayı 1 = ' || say1);
  dbms_output.put_line('Sayı 2 = ' || say2);
  dbms_output.put_line('Sayı 3 = ' || say3);
  dbms_output.put_line('Sayı 4 = ' || say4);
  dbms_output.put_line('Sayı 5 = ' || say5);
  dbms_output.put_line('Sayı 6 = ' || say6);
end;