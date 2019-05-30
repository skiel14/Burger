CREATE DATABASE IF NOT EXISTS burgers_db;
USE burgers_db;

-- DROP TABLE IF EXISTS burgers;
CREATE TABLE burgers (
  id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(100) NOT NULL,
  devoured BOOL DEFAULT false,
  PRIMARY KEY (id)
);
