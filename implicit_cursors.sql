set serveroutput on;
declare
  
begin
  --update example
  /*update emp set sal = sal + 200 where sal = 1;
  
  if sql%notfound then
    dbms_output.put_line('>> Güncellenecek Kayýt Bulunamadý');
  elsif sql%found then
    dbms_output.put_line(sql%rowcount || ' Adet Kayýt Güncellendi');
  end if;*/
  
  --delete example
  /*delete emp where empno = 1;
  
  if sql%notfound then
    dbms_output.put_line('>> Silinecek Kayýt Bulunamadý');
  elsif sql%found then
    dbms_output.put_line(sql%rowcount || ' Adet Kayýt Silindi');
  end if;*/
  
  --insert example
  insert into emp (empno, ename) values (2222, 'MEHMET');
  
  if sql%rowcount = 0 then
    dbms_output.put_line('Kayýt Girilemedi');
  else
    dbms_output.put_line(sql%rowcount || ' Kayýt Girildi');
  end if;
end;

rollback;