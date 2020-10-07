DELIMITER $$
CREATE OR REPLACE FUNCTION COUNT_REFERD_SUBJECT(std varchar(20),clsid int, semid int, deptid int,yearname varchar(4))
RETURNS VARCHAR(10)
BEGIN
	declare cnt_referd varchar(10);
	select count(*) from result_subjects rs
		left join mst_subjects ms on rs.subject_id=ms.subject_id
		where 
        rs.student_id=std
        and rs.class_id=clsid
        and rs.semester_id=semid
        and rs.department_id=deptid
        and rs.year_name =yearname
        and ms.subject_type=1 
        and rs.gpa=0.00 
        
        into cnt_referd;
RETURN cnt_referd;
END $$


DELIMITER ;