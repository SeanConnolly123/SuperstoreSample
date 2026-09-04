UPDATE S
SET S.CustomerKey = C.CustomerKey
FROM Sample_Superstore_Staging S
JOIN DimCustomer C
    ON S.Customer_ID = C.Customer_ID



