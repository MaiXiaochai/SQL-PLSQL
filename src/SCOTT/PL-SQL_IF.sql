/* Formatted on 2020/10/14 21:34:02 (QP5 v5.326) */
/*
判断用户输入从键盘输入的数字
1.IF的使用
2.接收键盘输入(字符串)
*/
-- accept 接收一个输入值
-- num：地址值，含义：在该地址上保存了输入的值
-- prompt: 提示
ACCEPT NUM PROMPT '请输入一个数字';

DECLARE
    pnum   NUMBER := &num;
BEGIN
    IF pnum = 0
    THEN
        DBMS_OUTPUT.put_line ('输入的值为0');
    ELSIF pnum < 10
    THEN
        DBMS_OUTPUT.put_line ('输入的为一位数');
    ELSIF pnum < 100
    THEN
        DBMS_OUTPUT.put_line ('输入的为两位数');
    ELSE
        DBMS_OUTPUT.put_line ('输入的为多位数');
    END IF;
END;
/