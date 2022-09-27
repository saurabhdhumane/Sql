--- create insert drop select prmary key data types unquie define etc....


create table student(
		student_id int,
		student_name varchar(20),
		student_deptement varchar(20)
		primary key (student_id)
);

select * from student

drop table student

alter table student add student_GPA decimal(3,2);

select * from student

alter table student drop column student_GPA

select * from student




select * from student


select * from student



select * from student





select * from student

drop table student


create table student(
		student_id int,
		student_name varchar(20) not null,
		student_deptement varchar(20) unique,
		primary key (student_id)
);

select * from student


insert into student values(
	1,'jack','Biology'
);
insert into student values(
	2, 'Kate','Sociology'
);
insert into student(student_id, student_name) values (
	3, null,'Chemistry'
);
insert into student values(
	4, 'Jack', 'Biology'
);
insert into student values (
	5,'Marry' , 'Computer'
);

select * from student

drop table student

create table student(
		student_id int,
		student_name varchar(20),
		student_deptement varchar(20) default 'Undecided',
		primary key (student_id)
);

select * from student


insert into student values(
	1,'jack','Biology'
);
insert into student values(
	2, 'Kate','Sociology'
);
insert into student(student_id, student_name) values (
	3, 'Claire'
);
insert into student values(
	4, 'Jack', 'Math'
);
insert into student values (
	5,'Marry' , 'Computer'
);

select * from student

drop table student

create table student(
		student_id int IDENTITY(1,1),
		student_name varchar(20),
		student_deptement varchar(20) default 'Undecided',
		primary key (student_id)
);

select * from student

insert into student values(
	'jack','Biology'
);
insert into student(student_name, student_deptement) values (
	'Claire','Biology'
);
insert into student(student_name, student_deptement) values (
	'Marry','Math'
);

select * from student


--- update and delete query

update student 
set student_deptement = 'Bio'
where student_deptement = 'Biology';

select * from student


update student 
set student_deptement = 'Mathemathics'
where student_deptement = 'Math';

select * from student

update student 
set student_deptement = 'Biochemistry'
where student_deptement = 'Bio' or student_deptement = 'Mathemathics';

select * from student

update student set student_name = 'Tom', student_deptement = 'Undecided'
where student_id = 1;

select * from student

update student set student_deptement = 'Undecided';


delete from student 
where student_id = 3;

select * from student;

delete from student
where student_name = 'Tom' and student_deptement = 'undecided';

select * from student;


--- basic Queries

select * from student


insert into student values(
	'jack','Biology'
);

insert into student values(
	'Kate','Sociology'
);
insert into student(student_name) values (
	 'Claire'
);
insert into student values(
	 'Jack', 'Math'
);
insert into student values (
	'Marry' , 'Computer'
);

select * from student

select student_name 
from student

select student_name , student_deptement
from student;

select student.student_name , student.student_deptement
from student order by student_name desc;

select student_name ,student_deptement from student where student_name = 'Jack' or student_deptement = 'Biology';

--- <,>,<=,>=,=,<>,AND,OR

select student.student_name, student.student_deptement from student 
where student_deptement <> 'Biology';


select * from student where student_id <3;

select * from student where student_id <=3;

select * from student where student_id <=3 and student_name= 'jack';

select * from student where student_id >=3 and student_name= 'jack';

select * from student where student_name in ('jack','marry','kate');

select * from student where student_deptement in ('math','biology');

select * from student where student_deptement in ('math','biology') and student_id <=4;

