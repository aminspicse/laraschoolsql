CREATE TABLE result_subjects (
  result_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  student_id VARCHAR(20) NOT NULL,
  class_id INT NOT NULL,
  semester_id INT NOT NULL,
  department_id INT NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  year_name VARCHAR(4) NOT NULL,
  subject_id INT NOT NULL,
  incourse FLOAT(6),
  mcq FLOAT(6),
  cq FLOAT(6),
  pt FLOAT(6),
  total FLOAT(6),
  gpa VARCHAR(6),
  grade VARCHAR(5),
  user_id INT NOT NULL,
  updated_by INT DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  FOREIGN KEY(student_id) REFERENCES admissions(student_id),
  FOREIGN KEY(class_id) REFERENCES mst_classnames(class_id),
  FOREIGN KEY(semester_id) REFERENCES mst_semesters(semester_id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(department_id) REFERENCES mst_departments(department_id),
  FOREIGN KEY(subject_id) REFERENCES mst_subjects(subject_id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  FOREIGN KEY(year_name) REFERENCES mst_years(year_name),
  FOREIGN KEY(updated_by) REFERENCES users(id)
)