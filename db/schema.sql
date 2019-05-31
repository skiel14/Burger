-- CREATE DATABASE IF NOT EXISTS burgers_db;
USE xyx3q8xfu1mdhqrr;

DROP TABLE IF EXISTS burgers;
CREATE TABLE burgers (
  id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(100) NOT NULL,
  devoured BOOL DEFAULT false,
  PRIMARY KEY (id)
);
