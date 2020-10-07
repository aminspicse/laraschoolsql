CREATE TABLE studentregistrations(
  registration_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  student_id INT(11) NOT NULL,
  class_id VARCHAR(200) DEFAULT NULL,
  semester_id VARCHAR(200) DEFAULT NULL,
  department_id INT(11) NOT NULL,
  year_name VARCHAR(20) DEFAULT NULL,
  user_id INT(11) NOT NULL,
  remarks VARCHAR(200) DEFAULT NULL,
  registration_date VARCHAR(45) DEFAULT NULL,
  auth_code VARCHAR(45) NOT NULL,
  created_at VARCHAR(100),
  updated_at VARCHAR(100) DEFAULT NULL
);
