set identity_insert Projects off
insert into Projects values('ECommerce Management',GETDATE(),DATEADD(year, 1, GETDATE()),'DotNetCurryOne')

set identity_insert Projects on
select * from Projects

select * from UserStories
insert into UserStories values(1,'Design the architecture',3)
insert into UserStories values(2,'Design the UserInterface',3)
insert into UserStories values(3,'Develope the webservices',4)
insert into UserStories values(4,'Test/Debug the webservices',4)

update UserStories set ProjectID=6 WHERE UserStoryID=4

select * from ProjectTasks
insert into ProjectTasks values(1001, getdate(),DATEADD(day,10,Getdate()),0,1)

insert into ManagerComments values('Please use Microsoft ORM technology entity framwork while consdering the technology.',2)
select * from ManagerComments




