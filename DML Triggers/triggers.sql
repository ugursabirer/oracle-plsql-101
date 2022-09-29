create or replace trigger emp_trg
before insert or update or delete on emp
for each row

declare
  v_bilgisayar emp_log.bilgisayar%type;
  v_ipadresi emp_log.ipadresi%type;
begin
  select sys_context('userenv', 'host'), sys_context('userenv', 'ip_address') 
    into v_bilgisayar, v_ipadresi from dual;
  if inserting then
    insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ipadresi, 
      empno, ename, job, mgr, hiredate, sal, comm, deptno)
    values(emp_seq.nextval, 'INS', user, sysdate, v_bilgisayar, v_ipadresi, 
      :new.empno, :new.ename, :new.job, :new.mgr, :new.hiredate, :new.sal, :new.comm, :new.deptno);
  end if;
  
  if updating then
    insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ipadresi, 
      empno, ename, job, mgr, hiredate, sal, comm, deptno)
    values(emp_seq.nextval, 'UPD1', user, sysdate, v_bilgisayar, v_ipadresi, 
      :new.empno, :new.ename, :new.job, :new.mgr, :new.hiredate, :new.sal, :new.comm, :new.deptno);
      
    insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ipadresi, 
      empno, ename, job, mgr, hiredate, sal, comm, deptno)
    values(emp_seq.nextval, 'UPD1', user, sysdate, v_bilgisayar, v_ipadresi, 
      :old.empno, :old.ename, :old.job, :old.mgr, :old.hiredate, :old.sal, :old.comm, :old.deptno);
  end if;
  
  if deleting then
    insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ipadresi, 
      empno, ename, job, mgr, hiredate, sal, comm, deptno)
    values(emp_seq.nextval, 'UPD1', user, sysdate, v_bilgisayar, v_ipadresi, 
      :old.empno, :old.ename, :old.job, :old.mgr, :old.hiredate, :old.sal, :old.comm, :old.deptno);
  end if;
end;