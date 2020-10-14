-- 记录型变量
-- 取emp中行类型作为emp_rec的变量类型
-- emp_rec emp%rowtype;

declare
	--得到7839员工的一行信息，打印姓名和薪水
	emp_rec emp%rowtype;
begin
	select * into emp_rec from emp where empno=7839;
	dbms_output.put_line(emp_rec.ename||'的薪水是：'||emp_rec.sal);
end;
/