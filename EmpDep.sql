create database Training 
use Training

create table Employee
(
ID int identity primary key ,
Name varchar(20),
Email varchar (20),
Age int,
City nvarchar(30),
DId int Foreign Key References Department(DId)
)

alter table Employee
add Gender nvarchar(6) ;

drop table Employee

drop table Department
create table Department
(
DId int identity primary key ,
Name nvarchar(20),
FloorNum int
)
--------------------------------
select * from Department
select * from Employee
--SubQuery--
select * from Employee Where Id 
in(select Id from Employee where Age > 18 )

select * from Employee 
where Id in
(select Id from Employee where City = 'Karachi')

update Employee set Gender =  'Male' Where Id = 5
update Employee set Salary = Salary + 30000
where Id in 
(select Id from Employee where City = 'karachi' )
 

---Another Example of SubQuery
 select * from Ap_Stu_Pro where ID
in (Select ID from Ap_Exam where Roll_Num  
in (select Roll_Num from Ap_Fee where Statuss = 'Paid'))

-------------------------------------------------
----GroupBy---Having
--we use having with group by command for filtering groups
select City, Count(Id) as [TotalId] from Employee group by City 
select City ,sum(Salary) as [TotalSalaryAccordingCities] from Employee 
group by City having City in ('Karachi')

select City ,sum(Salary) as [TotalSalaryAccordingCities] from Employee 
group by City 

select City, sum(Salary) as [TotalSalary] from Employee group by City having sum(Salary) > 22000
---------------------------------------------------------------------------
----Joins-------

--Right jOIN---

select A.ID , A.Name, A.Email, B.Recipet_No, B.Fees_Amount , B.Sub_Date  from Stu_pro as A
Right Join Stu_Fee as B  
on A.ID = B.ID

--Left jOIN---

select A.ID , A.Name, A.Email, B.Recipet_No, B.Fees_Amount , B.Sub_Date  from Stu_pro as A
Left Join Stu_Fee as B  
on A.ID = B.ID

select A.ID , A.Name, A.Email, B.Recipet_No, B.Fees_Amount , B.Sub_Date  from Stu_pro as A
Full outer Join Stu_Fee as B  
on A.ID = B.ID

select A.Name , A.Batch , B.Fees_Amount , B.Sub_Date From Stu_pro as A
Right join Stu_Fee as B
on A.ID = B.ID


-----1<>1 --- Copy Without Data Copy Empty
 
select * into BackupTable2 from Stu_pro where 1<>1
----------------------------------------------------
---Between---

select * from Employee where Age between 20 and 32
select * from Employee
---------------------------




ALTER DATABASE   ManDb 
    MODIFY FILE ( NAME = ManDb,   
                  FILENAME = 'D:\SqlDb\ManDb.mdf');  
GO
ALTER DATABASE    ManDb 
    MODIFY FILE ( NAME = ManDb_log ,   
                  FILENAME = 'D:\SqlDb\ManDb_log.ldf');  
GO
select * from ManDb.sys.database_files

ManDb	C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ManDb.mdf
ManDb_log	C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ManDb_log.ldf

Alter Database ManDb SET ONLINE;
GO
