CREATE TABLE mst_semesters (
  semester_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  lib_sem_id varchar(2),
  auth_code VARCHAR(6) NOT NULL,
  user_id INT NOT NULL,
  updated_by INT DEFAULT NULL,
  semester_status INT(1) NOT NULL DEFAULT 1 COMMENT '1 means active 0 means inactive',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(updated_by) REFERENCES users(id),
  foreign key(semester_status) references mst_status(status_id),
  foreign key(auth_code) references auth_key(auth_code),
  foreign key(lib_sem_id) references lib_semester(lib_sem_id)
)