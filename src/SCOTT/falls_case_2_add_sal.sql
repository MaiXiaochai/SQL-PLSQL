/*  为员工涨工资。
    从最低工资涨起每人涨10%，但是工资总额不能超过5万块。
    请计算涨工资的人数和涨工资后的工资总额，
    并输出涨工资的人数和工资总额
*/
set serveroutput on

declare
    cursor cemp is select empno, sal from emp;
    pempno emp.empno%type;
    psal emp.sal%type;
    
    --涨工资的人数
    countEmp number := 0;
    
    -- 涨工资后的工资总额
    salTotal number;
    
begin
    -- 涨工资之前的工资总额
    select sum(sal) into salTotal from emp;

    open cemp;
    loop
        fetch cemp into pempno, psal;

        -- 退出条件1：工资总额 > 5w，退出
        exit when salTotal + psal * 0.1 > 50000;
        
        -- 涨后工资总额
        salTotal := salTotal + psal * 0.1;

        -- 涨工资
        update emp set sal = sal * 1.1 where empno = pempno;
        
        -- 人数加一
        countEmp := countEmp + 1;
        
        -- 退出条件2：%notfound
        exit when cemp%notfound;        
        
    end loop;
    
    --因为有update操作，所以要commit
    commit;
    dbms_output.put_line('人数：' || countEmp || '工资总额：' || salTotal);
end;
/