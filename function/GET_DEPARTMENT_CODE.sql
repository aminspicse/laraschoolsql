DELIMITER $$

create or replace function GET_DEPARTMENT_CODE(depid int)
returns varchar(3)
begin
	declare depcode varchar(3);
    select lib_dep_id from mst_departments where department_id=depid
    into depcode;
    
    return depcode;
end $$

DELIMITER ;