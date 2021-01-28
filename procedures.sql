select * from Internship



create procedure Edit_Salary  @ID  int 
as
update Internship set Salary = 30000 where ID = @ID 
exec Edit_Salary  1004 
--search tables
EXEC sp_help Internship

exec sp_depends Internship

exec sp_rename 'New_Emp', 'Emp_new'

exec sp_rename 'Customers2.Cus_id', 'Cus_ID' , 'COLUMN' 

select * from  Customers2 

exec sys.sp_tables
select * from sys.tables

exec sp_helptext insert_internship

create trigger insert_intern_Emp
on Internship
after insert
as
begin
print 'Record has been inserted into Internship Table You can see the Result'
select * from Internship
end

create trigger insert2_intern_Emp
on Internship
after insert
as
begin
print 'Record has been inserted into Internship Table You can see the Result'

end

insert into Internship
values (1009,'Hamza' ,19, 40000 )

exec insert_internship @ID = 1008,
					   @Name = 'Ashar',
					   @Age = 19,
					   @Salary = 30000	
					   	
select * from Customers2
create trigger insert_record_Cus
on Customers2
after insert
as
begin
print 'Record has been inserted into Internship Table You can see the Result'
select * from Customers2
end

create trigger insert_record_Cus2
on Customers2
after insert
as
begin
print 'Record has been inserted into Internship Table You can see the Result'
select * from Customers2
end

insert into Customers2(Cus_ID,Cus_Name,Cus_Email,Cus_City,Cus_Country)
values (1116,'Khan','khan678@gmail.com','Multan','Pakistan')

create trigger update_record_Cus2
on Customers2
after update
as
begin
print 'Record has been updated into Internship Table You can see the Result'
select * from Customers2
end

update Customers2 set Cus_Name = 'Osama' , Cus_Email = 'osamausman55@gmail.com'
where Cus_ID = 1001

create trigger delete_record_Cus2
on Customers2
after delete
as
begin
print 'Record has been deleted into Internship Table You can see the Result'
select * from Customers2
end

delete Customers2 where Cus_ID = 1116
				   				  		  