--自定义例外：查询50号部门(数据中不存在50号部门)的员工姓名
set serveroutput on
declare
    -- 定义光标，代表50号部门的员工姓名
    cursor cemp is select ename from emp where deptno=50;
    pename emp.ename%type;

    --自定义例外
    no_emp_found exception;
begin
    --打开光标, 因为没有50号部门，所以不使用循环而是直接取一个值
    open cemp;
    fetch cemp into pename;
    if cemp%notfound then
    
        --抛出例外
        raise no_emp_found;
    end if;
    --关闭光标
    -- 这里raise后是执行不到的，不用担心
    --Oracle发现依然没有关闭的资源，会自动启动pmon(process monitor)进程帮我们回收（关闭）资源
    close cemp;
    
exception
    when no_emp_found then dbms_output.put_line('没有找到员工');
    when others then dbms_output.put_line('其它例外');
end;
/