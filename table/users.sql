CREATE TABLE users (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  auth_code VARCHAR(6)  DEFAULT NULL,
  user_name VARCHAR(150)  NOT NULL,
  email VARCHAR(150)  NOT NULL,
  email_verified_at TIMESTAMP NULL DEFAULT NULL,
  password VARCHAR(255)  NOT NULL,
  role_id INT  DEFAULT NULL,
  inst_name VARCHAR(255)  NOT NULL,
  inst_code VARCHAR(7) DEFAULT NULL,
  inst_ein VARCHAR(7) DEFAULT NULL,
  inst_logu VARCHAR(255) DEFAULT NULL,
  inst_phone VARCHAR(20) DEFAULT NULL,
  inst_address VARCHAR(255) DEFAULT NULL,
  remember_token VARCHAR(100) DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  user_status INT NOT NULL DEFAULT '1' COMMENT '1 is active and 0 is inactive',
  
  FOREIGN KEY(role_id) REFERENCES mst_role(role_id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code)
)