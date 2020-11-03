
set serveroutput on
declare
    pename emp.ename%type;
begin
    -- 查询一个不存在的员工的员工姓名，员工号为1234;
    select ename into pename from emp where empno=1234;

exception
    when no_data_found then dbms_output.put_line('没有查到该员工');
    when others then dbms_output.put_line('其它例外');
end;
/