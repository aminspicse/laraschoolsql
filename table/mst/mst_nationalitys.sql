CREATE TABLE mst_nationalitys (
  nationality_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nationality_name VARCHAR(255) NOT NULL,
  descriptions VARCHAR(255) NOT NULL,
  nationality_status INT(1) NOT NULL DEFAULT '1' COMMENT '1 is active 0 inactive',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  updated_at TIMESTAMP NULL DEFAULT NULL,
  
  foreign key(nationality_status) references mst_status(status_id)
)