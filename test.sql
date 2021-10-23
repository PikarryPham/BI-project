use QLBI_STAGE
go

select * from Postcodes_Stage;


truncate table Postcodes_Stage;

use QLBI_METADATA
GO

SELECT * FROM Metadata_Table

UPDATE Metadata_Table
SET CET = NULL
WHERE Name_DataFlow = 'Postcodes';

UPDATE Metadata_Table
SET LSET = '1900-01-01'
WHERE Name_DataFlow = 'Postcodes';

SELECT LSET, CET 
FROM Metadata_Table
WHERE Name_DataFlow = 'Postcodes';

use QLBI_SOURCE
GO

SELECT * FROM Postcodes

DELETE Postcodes WHERE postcode = 'S18127022';

INSERT INTO Postcodes(postcode,latitude,longitude,city,county,country_code,country_name,region_code,region_name,createdate)
VALUES('S18127022','test','test','test','test','test','test','test','test','2021-10-23 09:42:39.040');

--'2021-10-23 09:41:39.040','2021-10-23 09:46:42.833'

SELECT GETDATE()