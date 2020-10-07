create table lib_subjects(
	lib_sub_id int not null primary key auto_increment,
    subject_code varchar(10) not null,
    subject_name varchar(150) not null,
    lib_sub_status int not null default 1,
    
    foreign key(lib_sub_status) references mst_status(status_id)
)