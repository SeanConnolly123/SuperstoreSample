WITH DedupTable AS (SELECT *,
ROW_NUMBER() OVER(Partition By Order_ID,Ship_Date,Ship_Mode,Customer_ID,Customer_Name,Segment,Country,City,State,Postal_Code,Product_ID,Category,Sub_Category,Product_Name,Sales,Quantity,Discount,Profit Order By Order_ID) AS DedupRank 
FROM Sample_Superstore_Staging)
SELECT * FROM DedupTable WHERE DedupRank > 1






