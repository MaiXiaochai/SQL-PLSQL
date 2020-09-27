SELECT
	empno,
	ename,
	sal,
	( SELECT avg( sal ) FROM emp WHERE deptno = e.deptno ) avgsal 
FROM
	emp e 
WHERE
	sal > ( SELECT avg( sal ) FROM emp WHERE deptno = e.deptno );
	
	
	
	
	