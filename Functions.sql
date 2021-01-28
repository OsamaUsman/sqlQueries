use Aptech

CREATE FUNCTION NetSale(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END;

SELECT dbo.NetSale(7,100,0.1) netsale
  
insert into Internship(Salary)
select from  NetSale
where ID = 1003

select  * from Internship

create function Percentage_calculator
(
@total int,
@Mulby int,
@GrandTotal int
)
returns dec(10,2)
as 
begin 
return (@total * @Mulby / @GrandTotal) 
end

select  dbo.Percentage_calculator (282,100,500) Percentage

select   reverse (ID) from Internship 
select   reverse (Name) from Internship 
select   upper (Name) from Internship 

SELECT CurrentUser() from Internship;

SELECT Mid ("", ) AS ExtractString;

SELECT Replace("Name", "Name", "e") AS ReplaceString from Internship

select rand(3)

select count(*) from internship

select square(2)