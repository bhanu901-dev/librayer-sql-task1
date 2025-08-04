create database library_e;
use library_e;
create table student(
student_id int primary key,
student_name varchar(60),
phonenumber numeric(10),
email_id varchar(30)
);
create table Author(
Author_id int primary key,
Author_Name varchar(29)
);
create table Book(
Book_id int primary key,
BookName varchar(20),
AuthorName varchar(20)
);
create table Book_Author(
Book_id int primary key,
Author_id int,
foreign key(Book_id) references Book(Book_id),
foreign key(Author_id) references Author(Author_id)
);
create table Issue(
issue_id int primary key,
student_id int,
Book_id int,
issue_date date,
return_date date,
foreign key(Book_id) references Book(Book_id),
foreign key(student_id) references student(student_id)
);
select * from student;
