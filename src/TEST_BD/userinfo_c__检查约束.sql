create TABLE userinfo_c (
	id VARCHAR2 ( 10 ) primary key,
	username VARCHAR2 ( 20 ),
	salary NUMBER ( 10, 0 ) CHECK ( salary > 0 ) 
);



