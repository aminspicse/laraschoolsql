CREATE TABLE mst_classnames (
  class_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  lib_cls_id VARCHAR(2) NOT NULL,
  user_id INT NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  gpa_outof INT NOT NULL,
  class_status INT NOT NULL DEFAULT 1 COMMENT '1 means active 0 means inactive',
  update_by INT DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  remarks VARCHAR(200) DEFAULT NULL,
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(update_by) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  foreign key(lib_cls_id) references lib_class(lib_cls_id),
  foreign key(class_status) references mst_status(status_id)
)