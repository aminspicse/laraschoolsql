DELIMITER $$

CREATE OR REPLACE
    FUNCTION GET_CURRENT_CLASSID(stdid VARCHAR(20))
    RETURNS VARCHAR(20)
    
    BEGIN
	DECLARE CLSID VARCHAR(100);
	
	SELECT class_id FROM studentregistrations 
		WHERE student_id=stdid 
		ORDER BY registration_id DESC 
		LIMIT 1 
		INTO CLSID;
		
	RETURN CLSID;
    END$$

DELIMITER ;