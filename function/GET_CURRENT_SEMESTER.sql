DELIMITER $$
    CREATE OR REPLACE FUNCTION GET_CURRENT_SEMESTER(STDID VARCHAR(10))
    RETURNS VARCHAR(150)
    
    BEGIN
	DECLARE SEMNAME VARCHAR(150);
	
	SELECT GET_SEMESTER_NAME(SEMESTER_ID) FROM studentregistrations
	WHERE STUDENT_ID=STDID
	ORDER BY REGISTRATION_ID DESC
	LIMIT 1
	INTO SEMNAME;
	
	RETURN SEMNAME;
    END$$
DELIMITER ;