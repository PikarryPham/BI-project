-- B1. TẠO CSDL CHO DB NGUỒN CHO CÁC FILE SOURCE CSV VÀ TỪ THỜI ĐIỂM NÀY TA SẼ LÀM TRÊN SOURCE DB NÀY
USE master 
GO
IF DB_ID('QLBI_SOURCE') IS NOT NULL
	DROP DATABASE QLBI_SOURCE
GO
CREATE DATABASE QLBI_SOURCE
GO
USE QLBI_SOURCE
GO


/* B3. Tạo và thêm dữ liệu vào bằng cách chọn csdl QLBI_SOURCE --> Task --> Import flat file tương ứng --> đặt tên new table cho từng source
tương ứng vs các tên ở dưới đây --> next cho tới bước cuối cùng --> in process ---> done (tick màu xanh lá) là coi như đã thành công
Xem thêm : https://www.sqlshack.com/importing-and-working-with-csv-files-in-sql-server/
*/ 
-- B4. Thêm vào các bảng 2 cột: createdate vs updatedate VÀ 
ALTER TABLE Postcodes
ADD createdate DATETIME;

ALTER TABLE Postcodes
ADD updatedate DATETIME;


ALTER TABLE UK_Area_Information
ADD createdate DATETIME;

ALTER TABLE UK_Area_Information
ADD updatedate DATETIME;

ALTER TABLE Casualties2011_2014
ADD createdate DATETIME;

ALTER TABLE Casualties2011_2014
ADD updatedate DATETIME;


ALTER TABLE Vehicles2011_2014
ADD createdate DATETIME;

ALTER TABLE Vehicles2011_2014
ADD updatedate DATETIME;


ALTER TABLE Accidents2011_2014
ADD createdate DATETIME;

ALTER TABLE Accidents2011_2014
ADD updatedate DATETIME;




