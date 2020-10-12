-- rownum 是表或者(子)集合本身的行号，不是order by之后 结果集的行号
select 
	rownum e2_rownum,
	e1_rownum,
	emp_rownum,
	empno,
	ename,
	sal 
FROM
	(SELECT
		rownum e1_rownum,
		emp_rownum,
		empno,
		ename,
		sal 
	FROM
		( SELECT ROWNUM emp_rownum, empno, ename, sal FROM emp ORDER BY sal DESC ) e1 
		where rownum <= 8) e2
WHERE e1_rownum >= 5;