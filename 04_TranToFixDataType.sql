BEGIN TRAN

ALTER TABLE Sample_Superstore_Staging
ADD Order_Date_Fixed DATE

SELECT * FROM Sample_Superstore_Staging

UPDATE Sample_Superstore_Staging
SET Order_Date_Fixed = TRY_CAST(Order_Date AS Date)

SELECT * FROM Sample_Superstore_Staging

ALTER TABLE Sample_Superstore_Staging
DROP COLUMN Order_Date

SELECT * FROM Sample_Superstore_Staging

COMMIT TRAN







