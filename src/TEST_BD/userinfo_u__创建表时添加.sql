CREATE TABLE userinfo_u2 (
	id NUMBER ( 10 ) primary key,
	username VARCHAR2 ( 20 ),
	userpwd VARCHAR2 ( 20 ),
	constraint u_id UNIQUE ( username ),
	constraint u_username UNIQUE ( userpwd ) 
);

