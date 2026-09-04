ALTER TABLE Sample_Superstore_Staging
ADD LossFlag INT

BEGIN TRAN

UPDATE Sample_Superstore_Staging
SET LossFlag = CASE WHEN Profit < 0 AND Quantity > 0 THEN 1 ELSE 0 END

SELECT * FROM Sample_Superstore_Staging WHERE Profit < 0 AND LossFlag = 0

COMMIT

SELECT @@TRANCOUNT






