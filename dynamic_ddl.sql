create or replace procedure dc_dddl(p_query in clob)
is
begin
  execute immediate p_query;
end;
/
execute dc_dddl('create table deneme(aa number, bb varchar2(50), cc date)');
/
execute dc_dddl('drop table deneme');
/
declare
  v_query clob;
begin
  v_query := 'create table deneme(aa number, bb varchar2(50), cc date)';
  dc_dddl(v_query);
end;