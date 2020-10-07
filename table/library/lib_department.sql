create table lib_department(
	lib_dep_id varchar(2) not null unique key,
    department_name varchar(150),
    department_status int not null default 1,
    
    foreign key(department_status) references mst_status(status_id)
)
/*
insert into lib_department(lib_dep_id,department_name) values
('01', 'General'),
('02', 'Arts'),
('03', 'Science'),
('04', 'Commerce'),
('05', 'Computer'),
('06', 'Electrical');
*/