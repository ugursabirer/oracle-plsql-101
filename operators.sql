set serveroutput on;
declare
  x number := 20;
  y number := 30;
  z number := 3;
begin
  dbms_output.put_line('x + y = ' || to_char(x + y));
  dbms_output.put_line('x - y = ' || to_char(x - y));
  dbms_output.put_line('x * y = ' || to_char(x * y));
  dbms_output.put_line('y / z = ' || to_char(y / z));
  dbms_output.put_line('x ^ 2 = ' || to_char(x * x));
  dbms_output.put_line('x ^ z = ' || to_char(power(x, z)));
end;