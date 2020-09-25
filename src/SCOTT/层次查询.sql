SELECT 
	LEVEL,
	empno,
	ename,
	sal,
	mgr 
FROM
	emp 
CONNECT BY PRIOR empno = mgr 
START WITH mgr IS NULL
ORDER BY 1;




