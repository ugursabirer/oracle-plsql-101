create table ddl_log(
  neyapti varchar2(30),
  hangisema varchar2(30),
  nesneismi varchar2(30),
  kimyapti varchar2(30),
  nezaman date
);
/
create or replace trigger ddl_trg
before create or alter or drop
on schema

declare

begin
  insert into ddl_log(neyapti, hangisema, nesneismi, kimyapti, nezaman)
  select ora_sysevent, ora_dict_obj_owner, ora_dict_obj_name, user, sysdate from dual;
end;