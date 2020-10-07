DELIMITER $$ 
create or replace function CALCULATE_GPA(stdid varchar(20), clsid int, semid int, deptid int, yname varchar(4))
returns FLOAT

begin
	declare gpa_main varchar(9);
    declare gpa_extra varchar(5);
    declare cnt_referd varchar(5);
    declare gpa_ex_t varchar(5);
	declare cnt_main varchar(5);
    declare cnt_extra varchar(5);
    declare total_gpa varchar(5);
    declare grand_gpa FLOAT;
    declare gpa_outof int;

    select COUNT_REFERD_SUBJECT(stdid,clsid,semid,deptid,yname) into cnt_referd;
    select gpa_outof from mst_classnames where class_id=clsid into gpa_outof;
    
    SELECT COUNT_SUBJECT(stdid,clsid,semid,deptid,1) from dual into cnt_main;
    SELECT COUNT_SUBJECT(stdid,clsid,semid,deptid,2) from dual into cnt_extra;
    
    SELECT SUM_GPA(stdid,clsid,semid,deptid,yname,1) from dual into gpa_main;
    SELECT SUM_GPA(stdid,clsid,semid,deptid,yname,2) from dual into gpa_extra;
    
		/* start calculate extra subject gpa */
			if (gpa_extra >= 2) then
				set gpa_ex_t := gpa_extra-2;
			else
				set gpa_ex_t := 0;
			end if;
		/* start calculate extra subject gpa */
                    
		if(cnt_referd < 1) then
			set total_gpa := (gpa_main + gpa_ex_t)/cnt_main;
		else
			set total_gpa := '0.00';
		end if;
        
			if(total_gpa >= 5) then
				set grand_gpa := '5.00';
			elseif(total_gpa = 4) then
				set grand_gpa := '4.00';
			elseif(total_gpa = 3) then
				set grand_gpa := '3.00';
			elseif(total_gpa = 2) then
				set grand_gpa := '2.00';
			elseif(total_gpa = 1) then
				set grand_gpa := '1.00';
			else
				set grand_gpa := total_gpa;
			end if;
            
		
        return 	FORMAT(grand_gpa,2);
		
end$$

DELIMITER ;
