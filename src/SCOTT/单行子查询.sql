SELECT
	deptno,
	min( sal ) 
FROM
	emp 
GROUP BY
	deptno 
HAVING
	min( sal ) > ( SELECT min( sal ) FROM emp WHERE deptno = 20 );
	
	
	