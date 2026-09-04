UPDATE s
SET Ship_Date = r.Ship_Date
FROM Sample_Superstore_Staging s
JOIN Sample_Superstore_raw r
ON s.Row_ID = r.Row_ID






