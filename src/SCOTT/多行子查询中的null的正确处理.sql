SELECT
	* 
FROM
	emp 
WHERE
	empno NOT IN ( SELECT mgr FROM emp WHERE mgr IS NOT NULL );
	
	