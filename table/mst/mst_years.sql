CREATE TABLE mst_years (
  year_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  year_name VARCHAR(4) NOT NULL UNIQUE KEY,
  auth_code VARCHAR(6) DEFAULT NULL,
  user_id INT(11) DEFAULT NULL,
  remarks VARCHAR(200) DEFAULT NULL,
  year_status INT(1) DEFAULT 1 COMMENT '1 is active and 0 is inactive',
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  foreign key(year_status) references mst_status(status_id)
)