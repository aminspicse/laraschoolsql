DELIMITER $$

CREATE OR REPLACE FUNCTION GET_CURRENT_DEPARTMENTID(stdid VARCHAR(20))
   
    RETURNS VARCHAR(20)
    
    BEGIN
	DECLARE DPTID VARCHAR(100);
	
	SELECT DEPARTMENT_ID FROM studentregistrations 
		WHERE student_id=stdid 
		ORDER BY registration_id DESC 
		LIMIT 1 
		INTO DPTID;
		
	RETURN DPTID;
    END$$

DELIMITER ;