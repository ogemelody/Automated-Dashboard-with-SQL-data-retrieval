SET GLOBAL local_infile = 'ON';
SHOW VARIABLES LIKE "local_infile";
SHOW VARIABLES LIKE "secure_file_priv";
drop database if exists `GDP_INFO`;

/*CREATE THE DATABASE */
create database `GDP_INFO`;
use `GDP_INFO`;


CREATE TABLE GDP_DATA 
(COUNTRY VARCHAR (200),
COUNTRYCODE VARCHAR (200),
YEAR_  DATETIME,
GDP_Value float
);

LOAD DATA  INFILE "C:/Program Files/MySQL/MySQL Server 8.0/Uploads/tmp/gdp_csv.csv" 
INTO TABLE GDP_INFO.GDP_Data
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
;
SELECT * FROM GDP_DATA
