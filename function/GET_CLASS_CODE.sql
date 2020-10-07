DELIMITER $$

CREATE OR REPLACE FUNCTION GET_CLASS_CODE(clsid int)
returns varchar(3)
begin
	declare clscode varchar(3);
	select lib_cls_id from mst_classnames where class_id=clsid
    into clscode;
    
    return clscode;
end $$


DELIMITER ;