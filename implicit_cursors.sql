set serveroutput on;
declare
  
begin
  --update example
  /*update emp set sal = sal + 200 where sal = 1;
  
  if sql%notfound then
    dbms_output.put_line('>> G�ncellenecek Kay�t Bulunamad�');
  elsif sql%found then
    dbms_output.put_line(sql%rowcount || ' Adet Kay�t G�ncellendi');
  end if;*/
  
  --delete example
  /*delete emp where empno = 1;
  
  if sql%notfound then
    dbms_output.put_line('>> Silinecek Kay�t Bulunamad�');
  elsif sql%found then
    dbms_output.put_line(sql%rowcount || ' Adet Kay�t Silindi');
  end if;*/
  
  --insert example
  insert into emp (empno, ename) values (2222, 'MEHMET');
  
  if sql%rowcount = 0 then
    dbms_output.put_line('Kay�t Girilemedi');
  else
    dbms_output.put_line(sql%rowcount || ' Kay�t Girildi');
  end if;
end;

rollback;