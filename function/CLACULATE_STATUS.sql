DELIMITER $$

	CREATE OR REPLACE FUNCTION CLACULATE_STATUS(stdid varchar(20), clsid int, semid int, deptid int, yname varchar(4)) RETURNS VARCHAR(100)
    
    BEGIN
		DECLARE grade varchar(2);
        declare sts varchar(10);
        select CALCULATE_GRADE(stdid, clsid, semid, deptid, yname) from dual into grade;
        
        if(grade = 'F') then
			set sts:='Fail';
		else
			set sts:='Passed';
		end if;
        return sts;
    END $$

DELIMITER ;