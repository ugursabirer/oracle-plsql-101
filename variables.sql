set serveroutput on;
declare
  pi constant double precision := 3.14;
  r number(5, 2);
  alan number(10, 2);
  cevre number(10, 2);
  
  aciklama1 varchar2(15) := 'Alan = ';
  aciklama2 varchar2(15) default 'Çevre = ';
  
  f1 float;
  f2 float;
begin
  --r := 5;
  r := &yaricapi_gir;
  /*alan := pi * (r*r); --alan := pi * power(r,2);
  cevre := 2 * (pi*r);
  
  dbms_output.put_line(aciklama1 || alan);
  dbms_output.put_line(aciklama2 || cevre);*/
  
  f1 := pi * power(r,2);
  f2 := 2 * (pi*r);
  
  dbms_output.put_line(aciklama1 || f1);
  dbms_output.put_line(aciklama2 || f2);
end;