create TABLE userinfo_c2 (
	id VARCHAR2 ( 10 ) primary key,
	username VARCHAR2 ( 20 ),
	salary NUMBER ( 10, 0 ),
	constraint ck_salary check(salary > 10)
);

