/* Formatted on 2020/10/14 22:12:21 (QP5 v5.326) */
-- ��ѯ����ӡԱ����������нˮ
SET SERVEROUTPUT ON;

DECLARE
    --1. ����һ�����
    CURSOR cemp IS SELECT ename, sal FROM emp;

    --2. Ϊ��궨���Ӧ�ı���
    pname   emp.ename%TYPE;
    
    psal    emp.sal%TYPE;
BEGIN
    --3.�򿪹��
    OPEN cemp;

    LOOP
        --4.ȡ����
        -- ���⣺
        --     a.ѭ��ʲôʱ���Ƴ���
        --     b.fetchһ����ȡ��������
        EXIT WHEN cemp%NOTFOUND;

        FETCH cemp INTO pname, psal;

        DBMS_OUTPUT.put_line (pname || '��нˮ�ǣ�' || psal);
    END LOOP;

    CLOSE cemp;
END;
/