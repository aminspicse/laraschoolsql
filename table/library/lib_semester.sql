create table lib_semester(
	lib_sem_id varchar(2) not null unique key,
    semester_name varchar(100),
    semester_status int not null default 1,
    
    foreign key(semester_status) references mst_status(status_id)
)
/*
insert into lib_semester(lib_sem_id,semester_name) values
('01',"First Semester"),
('02',"Second Semester"),
('03','Mid Term'),
('04','Final'),
('05','Half Yearly'),
('06','Test'),
('07','Pre-Test');
*/
