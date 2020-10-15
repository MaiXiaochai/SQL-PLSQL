/* Formatted on 2020/10/15 20:36:59 (QP5 v5.326) */
-- 按员工的职位涨工资，总裁涨1000元，经理涨800元，其它人涨400元
set serveroutput on;

DECLARE
    CURSOR cemp IS SELECT empno, empjob FROM emp;

    pempno   EMP.EMPNO%TYPE;
    pjob     emp.empjob%TYPE;
BEGIN
    --打开光标
    OPEN cemp;
    if cemp%isopen then
            dbms_output.put_line('光标已打开');
        else
            dbms_output.put_line('光标没有打开');
    END IF;
    LOOP
        FETCH cemp INTO pempno, pjob;
        EXIT WHEN cemp%NOTFOUND;
        
        dbms_output.put_line('rowcount: '||cemp%rowcount);

    END LOOP;
    --关闭光标
    CLOSE cemp;
    
    if cemp%isopen then
            dbms_output.put_line('光标已打开');
        else
            dbms_output.put_line('光标已关闭');
    END IF;
    -- 事务的四个属性：原子性，一致性，隔离性，持久性
    -- Oracle默认开启事务，程序会在事务中执行，不提交不会更改
    commit;
END;
/