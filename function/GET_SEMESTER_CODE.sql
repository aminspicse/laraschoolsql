DELIMITER $$
 CREATE OR REPLACE FUNCTION GET_SEMESTER_CODE(semid int)
 returns varchar(3)
 
 begin 
	declare semcode varchar(3);
	select lib_sem_id from mst_semesters where semester_id=semid
    into semcode;
    
    return semcode;
 end $$

DELIMITER ;