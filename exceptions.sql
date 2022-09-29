set serveroutput on;
declare
  v_empno emp.empno%type;
  v_ename emp.ename%type;
  sayi number;
  
  error_code number;
  error_message varchar2(32000);
begin
  --select empno, ename into v_empno, v_ename from emp where empno = -5;
  --select empno, ename into v_empno, v_ename from emp;
  --sayi := 15/0;
  --insert into emp(empno, ename) values(7839, 'KRAL');
  --insert into emp(empno) values('KING');
  sayi := 'DEÐER';
  
  exception 
  when no_data_found then
    dbms_output.put_line('Veri Bulunamadý!');
  when too_many_rows then
    dbms_output.put_line('Birden Fazla Kayýt Okundu!');
  when zero_divide then
    dbms_output.put_line('Sýfýr ile Bölme Yapýlamaz!');
  when dup_val_on_index then
    dbms_output.put_line('7839 EMPNO lu Kayýt Zaten Var!');
    update emp set ename = 'KRAL' where empno = 7839;
    dbms_output.put_line(sql%rowcount || ' Tane Kayýt Güncellendi');
  when invalid_number then
    dbms_output.put_line('Sayýsal Alana String Deðer Girilemez!');
  /*when value_error then
    dbms_output.put_line('Alan Uyuþmazlýðý!');*/
  when others then
    error_code := sqlcode;
    error_message := sqlerrm;
    dbms_output.put_line('Hata Kodu = ' || error_code || ', Hata Mesajý = ' || error_message);
end;