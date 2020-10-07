CREATE TABLE sessions (
  id VARCHAR(255)  NOT NULL,
  user_id BIGINT(20) UNSIGNED DEFAULT NULL,
  ip_address VARCHAR(45) DEFAULT NULL,
  user_agent TEXT DEFAULT NULL,
  payload TEXT NOT NULL,
  last_activity INT(11) NOT NULL
)