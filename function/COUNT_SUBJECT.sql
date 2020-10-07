DELIMITER $$

CREATE OR REPLACE FUNCTION COUNT_SUBJECT(stdid varchar(20), clsid int, semid int, deptid int, subtype int)
RETURNS VARCHAR(10)
	BEGIN
    declare cnt varchar(10);
		SELECT COUNT(rs.student_id) from result_subjects rs
        left join mst_subjects ms on rs.subject_id=ms.subject_id
        where rs.student_id = stdid 
			and rs.class_id = clsid
            and rs.semester_id = semid
            and rs.department_id = deptid
            and ms.subject_type = subtype
		into cnt;
        
        return cnt;
    END$$

DELIMITER ;