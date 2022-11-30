create trigger nhanvien3 on NHANVIEN
after insert 
as
begin
insert into PHANCONG values ((select manv from inserted), 1,2,20)
end
INSERT INTO NHANVIEN VALUES ('Trần','Ngọc','Cường','031','06-06-2002','Tp hcm','Nam',60000,'003',1)