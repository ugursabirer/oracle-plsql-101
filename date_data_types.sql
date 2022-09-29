set serveroutput on;
declare
  tarih varchar2(50);
  yil varchar2(50);
  ay varchar2(50);
  gun varchar2(50);
  saat varchar2(50);
  dakika varchar2(50);
  saniye varchar2(50);
begin
  tarih := to_char(current_date, 'DD/MM/YYYY HH24:MI:SS');
  yil := to_char(sysdate, 'YYYY');
  ay := to_char(sysdate, 'MON');
  gun := to_char(sysdate, 'DAY');
  saat := to_char(sysdate, 'HH24');
  dakika := to_char(sysdate, 'MI');
  saniye := to_char(sysdate, 'SS');
  
  dbms_output.put_line('Tarih = ' || tarih);
  dbms_output.put_line('Yıl = ' || yil);
  dbms_output.put_line('Ay = ' || ay);
  dbms_output.put_line('Gün = ' || gun);
  dbms_output.put_line('Saat = ' || saat);
  dbms_output.put_line('Dakika = ' || dakika);
  dbms_output.put_line('Saniye = ' || saniye);
end;