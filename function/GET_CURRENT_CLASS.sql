DELIMITER $$

CREATE OR REPLACE
    FUNCTION GET_CURRENT_CLASS(stdid VARCHAR(20))
    RETURNS VARCHAR(20)
    
    BEGIN
	DECLARE clsname VARCHAR(100);
	SELECT GET_CLASS_NAME(class_id) FROM studentregistrations 
		WHERE student_id=stdid 
		ORDER BY registration_id DESC 
		LIMIT 1 
		INTO clsname;
	RETURN clsname;
    END$$

DELIMITER ;