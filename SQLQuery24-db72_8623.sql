create database db72_8623
use db72_8623
select * from tblRegistration
alter table tblregistration add dob date

truncate table tblregistration

alter proc registration_insert
@name varchar(50),
@gender int,
@email varchar(50),
@password varchar(50),
@dob date
as
begin
insert into tblRegistration(name,gender,email,password,dob,inserted_date)
values(@name,@gender,@email,@password,@dob,GETDATE())
end









alter proc registration_status_update
@rid int
as
begin
	declare @p int
	select @p=status from tblregistration where rid=@rid
		if(@p=0)
			begin
				update tblregistration set status=1 where rid=@rid
			end
		else
			begin
				update tblregistration set status=0 where rid=@rid
			end
end












sp_helptext registration_select
alter proc registration_select  
as  
begin  
select * from tblRegistration  
end

create proc registration_select_one
@rid int
as  
begin  
select * from tblRegistration where rid=@rid and status=0  
end



create proc user_login
@email varchar(50),
@password varchar(50)
as begin
select * from tblRegistration where email=@email and password=@password and status=0
end




---------------------------------------------------
create proc registration_delete
@rid int
as 
begin
update tblregistration set status=1 where rid=@rid
end




----===========================
create table tblRegistraion
(
rid int primary key identity,
name varchar(50),
gender int,
email varchar(50),
password varchar(50),
inserted_date date,
status int default 0
)
sp_helptext registration_insert

alter proc registration_insert
@name varchar(50),
@gender int,
@email varchar(50),
@password varchar(50)
as
begin
insert into tblRegistration(name,gender,email,password,inserted_date)
values(@name,@gender,@email,@password,GETDATE())
end


alter proc registration_select
as
begin
select * from tblRegistration where status=0
end