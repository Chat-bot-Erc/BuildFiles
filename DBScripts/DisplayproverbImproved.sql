create   procedure displayProverbImproved
AS
BEGIN
	declare @flagDefault bit
	set @flagDefault = 0
	
	declare @flagCheck bit
	if((select top(1) flag from dbo.ercProverbNew where flag = 'false')='false')
	begin
		set @flagCheck = 'false'
	end
	else
	begin
		set @flagCheck = 'true'
	end
	
	declare @Id int
--select @Id=count(Id)+1 from ercproverbNew
	--declare @counter int
	--set @counter = 0
	set @Id =1
	
	IF(@id < 11)
	BEGIN
		if(@flagCheck = @flagDefault)
		begin

			--set @counter = @counter + 1
	
			select top (1) proverb 
			from dbo.ercProverbNew
			where flag=0
				
			update top(1) dbo.ercProverbNew
			set flag = 1
			where flag=0 

		 	set @Id = @Id + 1
		end
else
	begin
		--set @counter = 1 
		
		update dbo.ercProverbNew
		set flag = 0

select top (1) proverb 
			from dbo.ercProverbNew
			where flag=0
				
			update top(1) dbo.ercProverbNew
			set flag = 1
			where flag=0 
			
			set @Id = @Id + 1
		--set @counter=@counter + 1
	end	
	end
end