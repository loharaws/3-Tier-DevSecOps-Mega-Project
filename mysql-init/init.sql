-- 1. Create database
CREATE DATABASE IF NOT EXISTS crud_app;

-- 2. Create user (important for real environments)
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'admin123';

-- 3. Grant permissions
GRANT ALL PRIVILEGES ON crud_app.* TO 'admin'@'%';

FLUSH PRIVILEGES;

-- 4. Use database
USE crud_app;

-- 5. Create tables
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role ENUM('admin', 'viewer') NOT NULL DEFAULT 'viewer',
  is_active TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
