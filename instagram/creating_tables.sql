-- CREATE DATABASE instag_clone;
-- USE instag_clone;

CREATE TABLE users {
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
};