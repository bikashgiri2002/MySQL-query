USE practical;
SELECT * FROM employee;
ALTER TABLE employee ADD COLUMN Department VARCHAR (50);
SET SQL_SAFE_UPDATES = 0;
UPDATE employee SET department = "App Developer" WHERE emp_id = 1000;
UPDATE employee SET department = "Maintenance" WHERE emp_id = 1001;
UPDATE employee SET department = "Web Developer" WHERE emp_id IN (1002,1003,1004,1005);
SET SQL_SAFE_UPDATES = 1;
