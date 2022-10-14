CREATE OR ALTER VIEW TOPBEST
AS
SELECT [first_name]
      ,[last_name]
      ,[dataOfBirth]
      ,[email]
      ,[phone]
  FROM [SalaryBase].[dbo].[salary]
  WHERE [passedExams]>30