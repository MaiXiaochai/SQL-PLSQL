SELECT
	* 
FROM
	emp 
WHERE
	sal >  ( SELECT max(sal) FROM emp WHERE DEPTNO = 30 )
	order by sal desc;
	
