SELECT
	d.deptno 部门号,
	d.dname 部门名称,
	count( e.empno ) 部门人数 
FROM
	emp e,
	dept d 
WHERE
	e.deptno(+) = d.deptno 
GROUP BY
	d.deptno,
	d.dname;
	
	
select * from dept