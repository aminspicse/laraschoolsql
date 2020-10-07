DELIMITER $$
create or replace function CALCULATE_GRADE(stdid varchar(20), clsid int, semid int, deptid int, yname varchar(4))
RETURNS VARCHAR(6)

BEGIN
	DECLARE grad varchar(6);
    DECLARE marksystem varchar(2);
    declare gpa varchar(6);
    
    select gpa_outof from mst_classnames where class_id=clsid into marksystem;
    select CALCULATE_GPA(stdid,clsid,semid,deptid,yname) from dual into gpa;
    
    if(marksystem = 5) then
		if(gpa >= 5) then
			set grad:='A+';
		elseif(gpa >= 4 and gpa < 5) then
			set grad:='A';
		elseif(gpa >= 3.50 and gpa < 4) then
			set grad:='A-';
		elseif(gpa >= 3.00 and gpa < 3.50) then
			set grad:='B';
		elseif(gpa >= 2.00 and gpa < 3.00) then
			set grad:='C';
		elseif(gpa >= 1.00 and gpa < 2.00) then
			set grad:='D';
		else 
			set grad:='F';
		end if;
	elseif(marksystem = 4) then
		if(gpa >= 4) then
			set grad:='A+';
		elseif(gpa >= 3.75 and gpa < 4) then
			set grad:='A';
		elseif(gpa >= 3.50 and gpa < 3.75) then
			set grad:='A-';
		elseif(gpa >= 3.25 and gpa < 3.50) then
			set grad:='B+';
		elseif(gpa >= 3.00 and gpa < 3.25) then
			set grad:='B';
		elseif(gpa >= 2.75 and gpa < 3.00) then
			set grad:='B-';
		elseif(gpa >= 2.50 and gpa < 2.75) then
			set grad:='C+';
		elseif(gpa >= 2.25 and gpa < 2.50) then
			set grad:='C';
		elseif(gpa >= 2.00 and gpa < 2.25) then
			set grad:='D';
		else 
			set grad:='F';
		end if;
    else
		set grad:='Grad Not Support';
	end if;
    
    return grad;
END $$
DELIMITER ;