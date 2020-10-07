CREATE TABLE studentregistrations (
  registration_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  student_id VARCHAR(20) NOT NULL,
  class_id INT NOT NULL,
  semester_id INT NOT NULL,
  department_id INT NOT NULL,
  year_name VARCHAR(4) NOT NULL,
  user_id INT(11) NOT NULL,
  remarks VARCHAR(200) DEFAULT NULL,
  registration_date VARCHAR(45) NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  registration_status INT NOT NULL DEFAULT 1 COMMENT '1 is active and 0 is inactive',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at VARCHAR(100) DEFAULT NULL,
  
  
  FOREIGN KEY(student_id) REFERENCES admissions(student_id),
  FOREIGN KEY(class_id) REFERENCES mst_classnames(class_id),
  FOREIGN KEY(semester_id) REFERENCES mst_semesters(semester_id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(department_id) REFERENCES mst_departments(department_id),
  FOREIGN KEY(year_name) REFERENCES mst_years(year_name),
  foreign key(registration_status) references mst_status(status_id),
  foreign key(auth_code) references auth_key(auth_code)
)