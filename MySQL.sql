CREATE DATABASE school CHARACTER SET utf8 COLLATE utf8_general_ci;

use school;

create table `class`(
  `id` int unsigned auto_increment,
  `name` varchar(100) not null,
  primary key ( `id` )
)engine=innodb default charset=utf8;

create table `student`(
  `id` int unsigned auto_increment,
  `name` varchar(100) not null,
  `sex` varchar(40) not null,
  `age` int not null,
  `class_id` int not null,
  primary key ( `id` )
)engine=innodb default charset=utf8;

insert into class (name) values ("软件1班");
insert into class (name) values ("软件2班");

insert into student (name,sex,age,class_id) values ("小明","男",21,1);
insert into student (name,sex,age,class_id) values ("小花","女",22,2);

update student set age=25 where id=1;

update class set name="软件3班" where id=(select class_id from student where name="小明");

delete from student where class_id=2;

drop table student;

drop database school;