DELIMITER $$
	CREATE OR REPLACE FUNCTION SUM_GPA(stdid varchar(20), clsid int, semid int, deptid int, year_name varchar(4), subtype int)
    RETURNS VARCHAR(20)
    BEGIN
		declare sgpa varchar(10);
		SELECT sum(rs.gpa) from result_subjects rs
        left join mst_subjects ms on rs.subject_id=ms.subject_id
        where rs.student_id = stdid 
			and rs.class_id = clsid
            and rs.semester_id = semid
            and rs.department_id = deptid
            and rs.year_name
            and ms.subject_type = subtype 
		into sgpa;
        
        return sgpa;
    END$$

DELIMITER ;