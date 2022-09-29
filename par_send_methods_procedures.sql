create or replace procedure silindir_hacmi (r in number, h in number, p_sonuc out number)
is
  v_sonuc number;
  pi constant number := 3.14;
begin
  v_sonuc := (pi * (r * r)) * h;
  p_sonuc := v_sonuc;
end;
/
set serveroutput on;
declare
  gelen_sonuc number;
begin
  --silindir_hacmi(4, 6, gelen_sonuc); --parametre sirasina gore
  --silindir_hacmi(r => 4, h => 6, p_sonuc => gelen_sonuc); -- parametre ismine gore
  silindir_hacmi(4, 6, p_sonuc => gelen_sonuc); --karisik
  dbms_output.put_line('Yarýçapý 4 ve yüksekliði 6 olan silindirin hacmi = ' || gelen_sonuc);
end;