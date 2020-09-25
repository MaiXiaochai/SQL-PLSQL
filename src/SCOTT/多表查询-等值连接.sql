SELECT
	e.empno,
	e.ename,
	e.sal,
	d.dname 
FROM
	emp e,
	dept d 
WHERE
	e.deptno = d.deptno