/* Formatted on 2020/10/15 20:36:59 (QP5 v5.326) */
-- ��Ա����ְλ�ǹ��ʣ��ܲ���1000Ԫ��������800Ԫ����������400Ԫ

DECLARE
    CURSOR cemp IS SELECT empno, empjob FROM emp;

    pempno   EMP.EMPNO%TYPE;
    pjob     emp.empjob%TYPE;
BEGIN
    --�򿪹��
    OPEN cemp;

    LOOP
        FETCH cemp INTO pempno, pjob;

        EXIT WHEN cemp%NOTFOUND;

        -- �ж�Ա��ְλ
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

    --�رչ��
    CLOSE cemp;
    -- ������ĸ����ԣ�ԭ���ԣ�һ���ԣ������ԣ��־���
    -- OracleĬ�Ͽ������񣬳������������ִ�У����ύ�������
    commit;
END;
/