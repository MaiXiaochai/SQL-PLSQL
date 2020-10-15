/* Formatted on 2020/10/15 20:36:59 (QP5 v5.326) */
-- 按员工的职位涨工资，总裁涨1000元，经理涨800元，其它人涨400元

DECLARE
    CURSOR cemp IS SELECT empno, empjob FROM emp;

    pempno   EMP.EMPNO%TYPE;
    pjob     emp.empjob%TYPE;
BEGIN
    --打开光标
    OPEN cemp;

    LOOP
        FETCH cemp INTO pempno, pjob;

        EXIT WHEN cemp%NOTFOUND;

        -- 判断员工职位
        IF pjob = 'PRESIDENT'
        THEN
            UPDATE emp
               SET sal = sal + 1000
             WHERE empno = pempno;
        ELSIF pjob = 'MANAGER'
        THEN
            UPDATE emp
               SET sal = sal + 800
             WHERE empno = pempno;
        ELSE
            UPDATE emp
               SET sal = sal + 400
             WHERE empno = pempno;
        END IF;
    END LOOP;

    --关闭光标
    CLOSE cemp;
    -- 事务的四个属性：原子性，一致性，隔离性，持久性
    -- Oracle默认开启事务，程序会在事务中执行，不提交不会更改
    commit;
END;
/