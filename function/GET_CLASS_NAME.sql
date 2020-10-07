DELIMITER $$ 

CREATE OR REPLACE FUNCTION GET_CLASS_NAME(id VARCHAR(20))
    
    RETURNS VARCHAR(20)
    
    BEGIN
	DECLARE cls VARCHAR(100);
    
	SELECT b.class_name FROM mst_classnames as a 
    left join lib_class as b on a.lib_cls_id = b.lib_cls_id
    WHERE a.class_id=id 
	INTO cls;
	
	RETURN cls;
    END$$

DELIMITER ;