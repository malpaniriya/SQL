create procedure Myproc
(
@num1 int,
@num2 int,
@result int output
)
as begin
set @result=@num1+@num2
end
go
declare @ans int
exec Myproc @num1=8,@num2=9,@result=@ans output
select @ans as'Addition'




