/* Formatted on 2020/10/14 21:34:02 (QP5 v5.326) */
/*
�ж��û�����Ӽ������������
1.IF��ʹ��
2.���ռ�������(�ַ���)
*/
-- accept ����һ������ֵ
-- num����ֵַ�����壺�ڸõ�ַ�ϱ����������ֵ
-- prompt: ��ʾ
ACCEPT NUM PROMPT '������һ������';

DECLARE
    pnum   NUMBER := &num;
BEGIN
    IF pnum = 0
    THEN
        DBMS_OUTPUT.put_line ('�����ֵΪ0');
    ELSIF pnum < 10
    THEN
        DBMS_OUTPUT.put_line ('�����Ϊһλ��');
    ELSIF pnum < 100
    THEN
        DBMS_OUTPUT.put_line ('�����Ϊ��λ��');
    ELSE
        DBMS_OUTPUT.put_line ('�����Ϊ��λ��');
    END IF;
END;
/