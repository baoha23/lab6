create trigger luongnv
	on nhanvien
	for insert, update
as 
	if(select luong from inserted) <15000
	begin
		print N'Lương <15000';
		rollback tran;
	end;

	//
	USE [QLDA]
GO

INSERT INTO [dbo].[NHANVIEN]
           ([HONV]
           ,[TENLOT]
           ,[TENNV]
           ,[MANV]
           ,[NGSINH]
           ,[DCHI]
           ,[PHAI]
           ,[LUONG]
           ,[MA_NQL]
           ,[PHG])
     VALUES
           (N' Trần '
           ,N' Ngọc '
           ,N' Cường '
           ,'098'
           ,'1-1-2002'
           ,'Tp Hcm'
           ,'Nam'
           ,'10000'
           ,'005'
           ,'1')
GO

