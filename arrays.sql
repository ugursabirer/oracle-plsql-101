create or replace type isim_listesi as varray(10) of varchar2(100);

set serveroutput on;
declare
  --type isim_listesi is varray(10) of varchar(100);
  aile isim_listesi := isim_listesi();
begin
  aile.extend(5); --exist, first, last, prior, next, trim, delete
  aile(1) := 'Ali';
  aile(2) := 'Ay�e';
  aile(3) := 'Fatma';
  aile(4) := 'Veli';
  aile(5) := 'Murat';
  dbms_output.put_line('Dizinin boyutu = ' || aile.limit);
  
  for i in 1..aile.count loop
    dbms_output.put_line(i || '. de�er = ' || aile(i));
  end loop;
end;
/
set serveroutput on;
declare
  kisiler isim_listesi := isim_listesi();
begin
  kisiler.extend(6);
  kisiler(1) := 'Ali';
  kisiler(2) := 'Ay�e';
  kisiler(3) := 'Fatma';
  kisiler(4) := 'Veli';
  kisiler(5) := 'Murat';
  kisiler(6) := 'Zeynep';
  
  for j in (select column_value kisi_ismi from table(kisiler) order by kisi_ismi) loop
    dbms_output.put_line(j.kisi_ismi);
  end loop;
end;
/
set serveroutput on;
declare
  type dersler is varray(5) of varchar2(25);
  type sureler is varray(5) of integer;
  
  ders dersler;
  sure sureler;
  
  toplam integer;
begin
  ders := dersler('T�rk�e', 'Matematik', 'Fizik', 'Kimya', 'Biyoloji');
  sure := sureler(40, 30, 20, 15, 25);
  
  toplam := ders.count;
  
  for i in 1..toplam loop
    dbms_output.put_line('Ders ' || i || ' ' || ders(i) || ' S�re ' || sure(i));
  end loop;
end;
/
set serveroutput on;
declare
  type c_list is array(100) of emp.ename%type;
  name_list c_list := c_list();
  
  sayac integer := 0;
begin
  for j in (select ename from emp) loop
    name_list.extend;
    sayac := sayac + 1;
    name_list(sayac) := j.ename;
  end loop;
  
  for k in 1..name_list.count loop
    dbms_output.put_line(k || '. De�er = ' || name_list(k));
  end loop;
end;

select count(*) from emp;