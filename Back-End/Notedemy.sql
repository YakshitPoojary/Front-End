CREATE TABLE Department(Department_ID INT PRIMARY KEY, Department_name varchar(50));

CREATE TABLE Subject(Subject_ID INT PRIMARY KEY, Subject_name varchar(50), 
					 Department_ID1 int, foreign key(Department_ID1) references Department(Department_ID));
					 
CREATE TABLE Modules(Module_ID INT PRIMARY KEY, Module_Name varchar(50), 
					 Subject_ID1 int, foreign key(Subject_ID1) references Subject(Subject_ID));

CREATE TABLE User_Data(User_ID int primary key, F_name varchar(20), L_Name varchar(20), 
					   Email varchar(30), PWord varchar(20), Username varchar(20), 
					   Branch_ID int, foreign key(Branch_ID) references Department(Department_ID));
					   
ALTER TABLE User_Data Rename to Person;

Create table Admin_data(Admin_ID int, foreign key(Admin_ID) references Person(User_ID),
						Admin_Uname int);
Alter table admin_data drop column admin_uname;
Alter table admin_data add column admin_uname varchar(20);
						
Create table User_Data(User_ID1 int, foreign key(User_ID1) references Person(User_ID),
						User_Role int primary key);
Alter table user_data drop column user_role;
Alter table user_data add column user_role varchar(20) primary key;
						
Create Table Notes(Notes_ID int, Title varchar(30), File_type varchar(6), 
				   Description varchar(100), Status varchar(10), Uploader_ID int, foreign key(Uploader_ID)
				   references Person(user_id), uploader_role varchar(20), foreign key(uploader_role)
				   references user_data(user_role), module_num int, foreign key(module_num) 
				   references modules(module_id));
				   
Select * from Subject
select * from user_data
