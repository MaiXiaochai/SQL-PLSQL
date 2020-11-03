-- 系统例外：被0除， zero_divide
set serveroutput on

declare
    --定义一个基本变量
    pnum number;
begin
    pnum := 1/0;
    
exception
    when zero_divide then dbms_output.put_line('0不能做除数');

end;
/