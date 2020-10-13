SELECT
	count( * ) total,
	sum( decode( to_char( hiredate, 'YYYY' ), '1980', 1, 0 ) ) "1980",
	sum( decode( to_char( hiredate, 'YYYY' ), '1981', 1, 0 ) ) "1981",
	sum( decode( to_char( hiredate, 'YYYY' ), '1982', 1, 0 ) ) "1982",
	sum( decode( to_char( hiredate, 'YYYY' ), '1987', 1, 0 ) ) "1987" 
FROM
	emp;
	