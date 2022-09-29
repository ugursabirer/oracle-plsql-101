create or replace procedure first_proc
is
begin
  dbms_output.put_line('Stored and StandAlone Procedure');
end;
/--calistirma cesitleri
set serveroutput on;
execute first_proc;
/
set serveroutput on;
begin
  first_proc;
end;