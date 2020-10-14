-- 引用 emp.ename字段的类型作为 my_name的类型
-- my_name emp.ename%type;

-- 查询并打印7839的姓名和薪水

declare
	pname emp.ename%type;
	psal emp.sal%type;
begin
	-- into 用来赋值
	select ename, sal into pname,psal from emp where empno=7839;
	dbms_output.put_line(pname ||'的薪水是：'||psal);
end;
/