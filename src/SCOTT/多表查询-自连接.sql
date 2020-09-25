SELECT
	e.ename 员工姓名,
	b.ename 老板姓名 
FROM
	emp e,
	emp b 
WHERE
	e.mgr = b.empno;
	
	