CREATE TABLE mst_quotas (
  quota_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  quota_name VARCHAR(100)  NOT NULL,
  auth_code VARCHAR(6) NOT NULL,
  user_id INT DEFAULT NULL,
  descriptions VARCHAR(255) NOT NULL,
  quota_status INT(1) NOT NULL DEFAULT '1' COMMENT '1 is active and 0 is inactive',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  foreign key(quota_status) references mst_status(status_id)
)