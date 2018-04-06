create database if not exists RequestIt;
USE RequestIt;
Drop Table Account_info;
Create Table if not exists Account_Info (
	user_id INT(1) not null, 
	Full_name VARCHAR(40) DEFAULT null, 
	email VARCHAR(40) DEFAULT null, 
	password VARCHAR(40) DEFAULT null,
    affilation VARCHAR(40) DEFAULT null,
	primary key (user_id)
	) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;
Drop Table Orders;
Create Table if not exists Orders (
	order_id INT not null AUTO_INCREMENT, 
	user_id INT not null,
    customer_name VARCHAR(40) DEFAULT null, 
    Software_Name VARCHAR(40) DEFAULT null, 
    request_date datetime DEFAULT null,
    primary key (order_id)
    )ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;
Drop Table Order_Status;
Create Table if not exists Order_Status (
	order_id INT not null AUTO_INCREMENT,
	Software_Name VARCHAR(40) DEFAULT null,
	Software_Version VARCHAR(40) DEFAULT null,
	Status VARCHAR(40) DEFAULT null,
	primary key (order_id)
	) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7;
    
#Data Population
INSERT INTO Account_Info VALUES (1,'Frank Su', 'frsu0674@colorado.edu','hello','Student');
INSERT INTO Account_Info Values (2, 'Cassidy', 'cassidy@colorado.edu', 'hello','Student');
INSERT INTO Account_Info Values (3, 'Michael', 'mike@colorado.edu', 'hello world!','Student');
INSERT INTO Account_Info Values (4, 'Abbi', 'abbi@colorado.edu', 'hello','Student');
INSERT INTO Account_Info Values (5, 'Shubha', 'Shubha@colorado.edu', 'hello','Student');
INSERT INTO Account_Info Values (6, 'Dustin', 'Dustin@colorado.edu', 'password', 'Staff');

INSERT INTO Orders Values (1, 1,'Frank', 'SolidWorks 2018', '04/05/18');
INSERT INTO Orders Values (2, 2,'Cassidy', 'VM ware', '04/05/18');
INSERT INTO Orders Values (3, 3,'Michael', 'Xammp', '04/05/18');
INSERT INTO Orders Values (4, 4,'Abbi', 'Steam', '04/05/18');
INSERT INTO Orders Values (5, 5,'Shubha', 'SSH', '04/05/18');
INSERT INTO Orders Values (6, 1,'Frank', 'Sublime Text', '04/05/18');
INSERT INTO Orders Values (7, 2,'Cassidy', 'Autodesk 2018- Revit', '04/05/18');
INSERT INTO Orders Values (8, 3,'Michael', 'Battle.net', '04/05/18');
INSERT INTO Orders Values (9, 4,'Abbi', 'LabView', '04/05/18');
INSERT INTO Orders Values (10, 5,'Shubha', 'PhotoShop cs6', '04/05/18');

INSERT INTO Order_Status Values (1, 'SolidWorks 2018', '1.0', 'Recieved');
INSERT INTO Order_Status Values (2, 'VM ware', '1.1', 'Recieved');
INSERT INTO Order_Status Values (3, 'Xammp', '1.3','Completed');
INSERT INTO Order_Status Values (4, 'Steam', '1.2','Denied');
INSERT INTO Order_Status Values (5, 'SSH', 'R109-Stable','Completed');
INSERT INTO Order_Status Values (6, 'Sublime Text', 'NEWEST AVALIABLE', 'Recieved');
INSERT INTO Order_Status Values (7, 'Autodesk 2018 - Revit', '2.0', 'Completed');
INSERT INTO Order_Status Values (8, 'Battle.net', 'NEWEST AVALIABLE','Denied');
INSERT INTO Order_Status Values (9, 'LabView', '2018SP2', 'Recieved');
INSERT INTO Order_Status Values (10,'PhotoShop cs6', 'Whichever','In Progress');


SELECT * FROM Account_Info;
SELECT * FROM Orders;
SELECT * FROM Order_Status;
