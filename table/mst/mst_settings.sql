CREATE TABLE mst_settings (
  setting_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT(11) NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  class_id INT DEFAULT NULL,
  semester_id INT DEFAULT NULL,
  year_name VARCHAR(5) DEFAULT NULL,
  department_id INT DEFAULT NULL,
  descriptions VARCHAR(255) DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(semester_id) REFERENCES mst_semesters(semester_id),
  FOREIGN KEY(department_id) REFERENCES mst_departments(department_id),
  FOREIGN KEY(class_id) REFERENCES mst_classnames(class_id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  FOREIGN KEY(year_name) REFERENCES mst_years(year_name)
)