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
    dbms_output.put_line('Kitap ' || sayi || ' ad� = ' || kitap.kitap_adi);
    dbms_output.put_line('Kitap ' || sayi || ' yazar� = ' ||kitap.yazari);
    dbms_output.put_line('Kitap ' || sayi || ' konusu = ' ||kitap.konusu);
    dbms_output.put_line('Kitap ' || sayi || ' ISBN numaras� = ' ||kitap.isbn);
    dbms_output.put_line('Kitap ' || sayi || ' yay�nevi = ' ||kitap.yayinevi);
  end;
begin
  kitap1.kitap_adi := '1. Kitab�n Ad�';
  kitap1.yazari := '1. Kitab�n Yazar�';
  kitap1.konusu := '1. Kitab�n Konusu';
  kitap1.isbn := 123456;
  kitap1.yayinevi := '1. Kitab�n Yay�nevi';
  
  kitap2.kitap_adi := '2. Kitab�n Ad�';
  kitap2.yazari := '2. Kitab�n Yazar�';
  kitap2.konusu := '2. Kitab�n Konusu';
  kitap2.isbn := 654321;
  kitap2.yayinevi := '2. Kitab�n Yay�nevi';
  
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