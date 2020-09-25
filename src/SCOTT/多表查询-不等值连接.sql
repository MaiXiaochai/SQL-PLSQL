SELECT
	e.empno,
	e.ename,
	e.sal,
	s.grade 
FROM
	emp e,
	salgrade s 
WHERE
	e.sal BETWEEN s.losal 
	AND s.hisal;
	
