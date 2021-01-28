use ProductAndSupplier
select * from Products

create procedure spProduct
as
begin
select Name from dbo.Products;
end

exec spPoduct

create procedure spgetwithProductid
@id int

as 
begin
select * from Products where ProductId = @id  ;
end
 spgetwithProductid 2 


create procedure spgetwithProductidandcat
@id int,
@cat varchar(50)
as 
begin
select * from Products where ProductId = @id and Category = @cat ;
end

spgetwithProductidandcat 2,'Phone' 
