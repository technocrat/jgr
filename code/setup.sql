CREATE DATABASE r;
CREATE TABLE jgr (
recid INT AUTO_INCREMENT PRIMARY KEY,
id INT,
v1 FLOAT,
v2 FLOAT,
v3 FLOAT,
v4 FLOAT,
v5 FLOAT,
v6 FLOAT,
v7 FLOAT,
v8 FLOAT,
v9 FLOAT,
v10 FLOAT,
v11 FLOAT,
v12 FLOAT,
v13 FLOAT,
v14 FLOAT,
v15 FLOAT,
v16 FLOAT,
v17 FLOAT,
v18 FLOAT,
v19 FLOAT,
v20 FLOAT,
v21 FLOAT,
v22 FLOAT,
v23 FLOAT,
v24 FLOAT)
;
CREATE USER 'studio'@'localhost' IDENTIFIED BY 'studio';
GRANT ALL PRIVILEGES ON r.jgr TO 'studio'@'localhost';