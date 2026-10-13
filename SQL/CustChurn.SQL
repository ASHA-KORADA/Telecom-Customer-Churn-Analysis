
Use Cust_churn
go


/* %Gender Count Distribution */

SELECT Gender,
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 /(
        SELECT COUNT(*)
        FROM Customer_Data
    ) AS Gender_Distribution
FROM dBO.Customer_Data
GROUP BY Gender


/* %Contract Distribution */

SELECT Contract,
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 100.0 /(
        SELECT COUNT(*)
        FROM Customer_Data
    ) AS Contract_Distribution
FROM Customer_Data
GROUP BY Contract


/* %State Distribution*/

SELECT State,
    COUNT([State]) AS TotalCount,
    COUNT([State]) * 100.0 /(
        SELECT COUNT(*)
        FROM Customer_Data
    ) AS State_Distribution
FROM Customer_Data
GROUP BY [State]
ORDER BY State_Distribution DESC

/*Internet Types*/

SELECT distinct  Internet_type from Customer_Data