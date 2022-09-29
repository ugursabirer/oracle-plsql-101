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
  sayi := 'DE�ER';
  
  exception 
  when no_data_found then
    dbms_output.put_line('Veri Bulunamad�!');
  when too_many_rows then
    dbms_output.put_line('Birden Fazla Kay�t Okundu!');
  when zero_divide then
    dbms_output.put_line('S�f�r ile B�lme Yap�lamaz!');
  when dup_val_on_index then
    dbms_output.put_line('7839 EMPNO lu Kay�t Zaten Var!');
    update emp set ename = 'KRAL' where empno = 7839;
    dbms_output.put_line(sql%rowcount || ' Tane Kay�t G�ncellendi');
  when invalid_number then
    dbms_output.put_line('Say�sal Alana String De�er Girilemez!');
  /*when value_error then
    dbms_output.put_line('Alan Uyu�mazl���!');*/
  when others then
    error_code := sqlcode;
    error_message := sqlerrm;
    dbms_output.put_line('Hata Kodu = ' || error_code || ', Hata Mesaj� = ' || error_message);
end;