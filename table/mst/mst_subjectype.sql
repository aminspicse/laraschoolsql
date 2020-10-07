CREATE TABLE mst_subjecttype(
	subject_type INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	type_name VARCHAR(200),
	auth_code VARCHAR(6) default null,
	user_id INT DEFAULT NULL,
	type_status INT DEFAULT 1 COMMENT '1 is active and 0 is inactive',
    
    foreign key(auth_code) references auth_key(auth_code),
    foreign key(user_id) references users(id),
    foreign key(type_status) references mst_status(status_id)
);