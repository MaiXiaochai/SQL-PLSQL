-- 查询某个部门中员工的姓名
set serveroutput on

declare
    -- 定义带参数的游标
    -- dno 是形参，类似于Python函数中的形参
    cursor cemp(dno number) is select ename from emp where deptno=dno;
    
    -- 定义引用型变量
    pename emp.ename%type;
    
begin
    -- 打开光标，传入参数（实参）
    open cemp(10);
    loop
        -- 取出员工姓名
        fetch cemp into pename;
        exit when cemp%notfound;
        
        dbms_output.put_line(pename);
        
    end loop;
    close cemp;

end;
/