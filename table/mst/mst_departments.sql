CREATE TABLE mst_departments (
  department_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  lib_dep_id varchar(2) not null,
  descriptions VARCHAR(255) DEFAULT NULL,
  department_status INT DEFAULT '1',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  FOREIGN KEY(department_status) REFERENCES mst_status(status_id),
  foreign key(lib_dep_id) references lib_department(lib_dep_id)
)