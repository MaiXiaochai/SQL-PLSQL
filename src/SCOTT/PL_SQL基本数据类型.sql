-- 基本变量类型
declare
	-- 数字
	pnumber number(7,2);
	-- 字符串
	pname varchar2(20);
	-- 日期
	pdate date;
begin
	pnumber :=1;
	pname := 'Tom';
	pdate :=sysdate;
	dbms_output.put_line(pnumber);
	dbms_output.put_line(pname);
	dbms_output.put_line(pdate);
end;
/