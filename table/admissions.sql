CREATE TABLE admissions (
  admission_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  serial_no VARCHAR(60) NOT NULL,
  auth_code varchar(6) NOT NULL,
  student_id VARCHAR(20) NOT NULL UNIQUE KEY,
  old_student_id VARCHAR(20),
  student_name VARCHAR(100),
  father_name VARCHAR(100),
  mother_name VARCHAR(100),
  mobile_number VARCHAR(20),
  nationality INT DEFAULT NULL,
  nid VARCHAR(25) DEFAULT NULL,
  dateofbirth VARCHAR(50) DEFAULT NULL,
  religion INT DEFAULT NULL,
  quota INT DEFAULT NULL,
  admission_date VARCHAR(100) NOT NULL,
  country INT NOT NULL,
  division INT NOT NULL,
  district INT NOT NULL,
  upazila INT NOT NULL,
  union_id INT DEFAULT NULL,
  post_office VARCHAR(100) NOT NULL,
  permanent_address VARCHAR(200) NOT NULL,
  previous_education VARCHAR(200) DEFAULT NULL,
  admission_class INT NOT NULL,
  department INT DEFAULT NULL,
  admission_year VARCHAR(24) DEFAULT NULL,
  student_photo VARCHAR(900) DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at VARCHAR(300) DEFAULT NULL,
  user_id INT,
  admission_status INT default 2,
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  FOREIGN KEY(religion) REFERENCES mst_religions(religion_id),
  FOREIGN KEY(quota) REFERENCES mst_quotas(quota_id),
  FOREIGN KEY(nationality) REFERENCES mst_nationalitys(nationality_id),
  FOREIGN KEY(admission_class) REFERENCES mst_classnames(class_id),
  FOREIGN KEY(department)REFERENCES mst_departments(department_id),
  FOREIGN KEY(country) REFERENCES apps_country(country_id),
  FOREIGN KEY(division) REFERENCES apps_division(division_id),
  FOREIGN KEY(district) REFERENCES apps_district(district_id),
  FOREIGN KEY(upazila) REFERENCES apps_upazila(upazila_id),
  FOREIGN KEY(union_id) REFERENCES apps_union(union_id),
  FOREIGN KEY(admission_status) REFERENCES mst_status(status_id)
  )