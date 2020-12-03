DROP DATABASE IF EXISTS employeeManagementDB;
CREATE database employeeManagementDB;

USE employeeManagementDB;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL,
  manager_id INT NULL,

  PRIMARY KEY (id)
);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mario", "Brother", 1 , 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Princess", "Rosalina", 2, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sailor", "Moon", 3, 2);

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL,
 PRIMARY KEY (id)
);
INSERT INTO department (name)
VALUES ("Hero");

INSERT INTO department (name)
VALUES ("Royalty");

INSERT INTO department (name)
VALUES ("Evil");

CREATE TABLE roles (
   id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,4) NULL,
  department_id INT NULL,
 
  PRIMARY KEY (id)
);

INSERT INTO roles (title, salary, department_id)
VALUES ("Bossman", 2000000, 1 );

INSERT INTO roles (title, salary, department_id)
VALUES ("Enemy", 100000 , 2);

INSERT INTO roles (title, salary, department_id)
VALUES ("Janitor", 60000, 3);
