-- userinfo1 创建表时添加默认值
create table userinfo1 (
	id number(6,0),
	regdate date default sysdate
);