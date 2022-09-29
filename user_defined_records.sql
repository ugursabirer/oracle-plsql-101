set serveroutput on;
declare
  type kitaplar is record (
    kitap_adi varchar2(100),
    yazari varchar2(30),
    konusu varchar2(50),
    isbn number,
    yayinevi varchar2(40),
    kitap bfile
  );
  kitap1 kitaplar;
  kitap2 kitaplar;
  
  procedure yaz(kitap kitaplar, sayi number) is
  begin
    dbms_output.put_line('Kitap ' || sayi || ' adı = ' || kitap.kitap_adi);
    dbms_output.put_line('Kitap ' || sayi || ' yazarı = ' ||kitap.yazari);
    dbms_output.put_line('Kitap ' || sayi || ' konusu = ' ||kitap.konusu);
    dbms_output.put_line('Kitap ' || sayi || ' ISBN numarası = ' ||kitap.isbn);
    dbms_output.put_line('Kitap ' || sayi || ' yayınevi = ' ||kitap.yayinevi);
  end;
begin
  kitap1.kitap_adi := '1. Kitabın Adı';
  kitap1.yazari := '1. Kitabın Yazarı';
  kitap1.konusu := '1. Kitabın Konusu';
  kitap1.isbn := 123456;
  kitap1.yayinevi := '1. Kitabın Yayınevi';
  
  kitap2.kitap_adi := '2. Kitabın Adı';
  kitap2.yazari := '2. Kitabın Yazarı';
  kitap2.konusu := '2. Kitabın Konusu';
  kitap2.isbn := 654321;
  kitap2.yayinevi := '2. Kitabın Yayınevi';
  
  /*dbms_output.put_line(kitap1.kitap_adi);
  dbms_output.put_line(kitap1.yazari);
  dbms_output.put_line(kitap1.konusu);
  dbms_output.put_line(kitap1.isbn);
  dbms_output.put_line(kitap1.yayinevi);*/
  
  yaz(kitap1, 1);
  
  dbms_output.put_line('     ');
  
  /*dbms_output.put_line(kitap2.kitap_adi);
  dbms_output.put_line(kitap2.yazari);
  dbms_output.put_line(kitap2.konusu);
  dbms_output.put_line(kitap2.isbn);
  dbms_output.put_line(kitap2.yayinevi);*/
  
  yaz(kitap2, 2);
end;