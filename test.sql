use QLBI_STAGE
go

truncate table Postcodes_Stage;
select * from Postcodes_Stage;
select * from UK_Area_Information_Stage;

use QLBI_METADATA
GO

SELECT * FROM Metadata_Table

UPDATE Metadata_Table
SET CET = NULL
WHERE Name_DataFlow = 'Postcodes';

--UPDATE Metadata_Table
--SET CET = CAST(GETDATE() AS VARCHAR)
--WHERE Name_DataFlow = 'Postcodes';

UPDATE Metadata_Table
SET LSET = '1900-01-01'
WHERE Name_DataFlow = 'Postcodes';

SELECT LSET, CET 
FROM Metadata_Table
WHERE Name_DataFlow = 'Postcodes';

use QLBI_SOURCE
GO

SELECT * FROM Postcodes

TRUNCATE TABLE 

DELETE Postcodes WHERE postcode = 'S18127022';

INSERT INTO Postcodes(postcode,latitude,longitude,city,county,country_code,country_name,region_code,region_name,createdate)
VALUES('S18127022','test','test','test','test','test','test','test','test','2021-10-23 09:42:39.040');

--'2021-10-23 09:41:39.040','2021-10-23 09:46:42.833'

USE QLBI_TEMP;


SELECT * FROM Postcodes_Temp


SELECT * FROM Postcodes_Temp
WHERE (create_date >= CAST( '1900-01-01' AS VARCHAR)
AND create_date < CAST(getdate() AS VARCHAR) )
 OR (update_date >= CAST( '1900-01-01' AS VARCHAR) AND update_date < CAST(getdate() AS VARCHAR)) AND trangthai = 'FALSE'

USE QLBI_STAGE;

SELECT COUNT(*) FROM Postcodes_Stage
SELECT * FROM Postcodes_Stage ORDER BY postcode

TRUNCATE TABLE Postcodes_Temp
TRUNCATE TABLE Accidents2011_2014_Temp


SELECT GETDATE();
--SELECT 
--	CASE 
--		WHEN '2021-10-29 19:07:30.047000000' > '1900-01-01' THEN 'true'
--		ELSE 'false'
--	END AS testting;

