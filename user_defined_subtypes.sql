set serveroutput on;
declare
  subtype isim is char(4);
  subtype mesaj is varchar2(100);
  uye isim;
  tebrik mesaj;
begin
  uye := 'U�ur';
  tebrik := 'PL/SQL D�nyas�na Ho� Geldin';
  dbms_output.put_line('Merhaba ' || uye || ', ' || tebrik);
end;