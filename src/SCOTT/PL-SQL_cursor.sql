/* Formatted on 2020/10/14 22:12:21 (QP5 v5.326) */
-- 查询并打印员工的姓名和薪水
SET SERVEROUTPUT ON;

DECLARE
    --1. 定义一个光标
    CURSOR cemp IS SELECT ename, sal FROM emp;

    --2. 为光标定义对应的变量
    pname   emp.ename%TYPE;
    
    psal    emp.sal%TYPE;
BEGIN
    --3.打开光标
    OPEN cemp;

    LOOP
        --4.取数据
        -- 问题：
        --     a.循环什么时候推出？
        --     b.fetch一定能取到数据吗？
        EXIT WHEN cemp%NOTFOUND;

        FETCH cemp INTO pname, psal;

        DBMS_OUTPUT.put_line (pname || '的薪水是：' || psal);
    END LOOP;

    CLOSE cemp;
END;
/