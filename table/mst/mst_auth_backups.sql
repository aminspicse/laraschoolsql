CREATE TABLE mst_auth_backups (
  backup_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  auth_code VARCHAR(6),
  user_id INT NOT NULL,
  deleted_by INT NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  
  FOREIGN KEY(deleted_by) REFERENCES users(id),
  FOREIGN KEY(auth_code) REFERENCES auth_key(auth_code),
  FOREIGN KEY(user_id) REFERENCES users(id)
)