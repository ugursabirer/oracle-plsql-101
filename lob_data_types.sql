create table large_objects (
  char_data clob,
  binary_data blob,
  ext_binary_data bfile
);

create directory lob_data as 'C:\SQL-Dersleri';

declare
begin
  insert into large_objects(char_data, binary_data, ext_binary_data) values
  (
    'Bu alan CLOB türündedir',
    utl_raw.cast_to_raw('Bu alan BLOB türündedir'),
    bfilename('lob_data', 'resim.png')
  );
end;

select * from large_objects;

select binary_data, utl_raw.cast_to_varchar2(binary_data) from large_objects;

select dbms_lob.getlength(ext_binary_data) into v_len_bfile from large_objects;