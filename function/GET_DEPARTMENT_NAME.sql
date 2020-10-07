DELIMITER $$
CREATE OR REPLACE
    FUNCTION GET_DEPARTMENT_NAME(dptid VARCHAR(20))
    RETURNS VARCHAR(20)
    
    BEGIN
	DECLARE dptname VARCHAR(100);
	
	SELECT b.department_name FROM mst_departments a
		left join lib_department as b on a.lib_dep_id=b.lib_dep_id
		WHERE a.department_id=dptid
		INTO dptname;
		
	RETURN dptname;
    END$$

DELIMITER ;