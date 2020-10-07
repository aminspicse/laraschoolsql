CREATE TABLE mst_religions (
  religion_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  religion_name VARCHAR(150) NOT NULL,
  descriptions VARCHAR(255) DEFAULT NULL,
  religion_status INT(1) NOT NULL DEFAULT '1' COMMENT '1 active 0 inactive',
  
  
  FOREIGN KEY(religion_status) REFERENCES mst_status(status_id)
)