Select * from bank_loan_data;

--Total No.of Loan Applications
Select COUNT(ID) as 'Total_Loan_Applications' from bank_loan_data;

--MTD Total Loan Applications
Select COUNT(ID) as 'MTD_Total_Loan_Applications' from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;
-- Latest month available in the dataset is December and the Month number for December is "12"

--Previous MTD Total Loan Applications
Select COUNT(ID) as 'PMTD_Total_Loan_Applications' from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;
-- Last month for december is november and the Month number for November is "11"

--Total Funded Amount 
Select Sum(loan_amount) as 'Total_Funded_Amount' from bank_loan_data;

--MTD Total Funded Amount 
Select Sum(loan_amount) as 'MTD_Total_Funded_Amount' from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Previous MTD Total Funded Amount 
Select Sum(loan_amount) as 'PMTD_Total_Funded_Amount' from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

--Total_Amount_Received
Select Sum(total_payment) as 'Total_Amount_Received' from bank_loan_data;

--MTD Total_Amount_Received
Select Sum(total_payment) as 'MTD_Total_Amount_Received' from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Previous MTD Total Amount Received
Select Sum(total_payment) as 'PMTD_Total_Amount_Received' from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

--Average_Interest_Rate
Select ROUND(avg(int_rate),4) * 100 as 'Average_Interest_Rate' from bank_loan_data;

--MTD Average_Interest_Rate
Select ROUND(avg(int_rate),4) * 100 as 'MTD_Average_Interest_Rate' from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Previous MTD Average_Interest_Rate
Select ROUND(avg(int_rate),4) * 100 as 'PMTD_Average_Interest_Rate' from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

-- Avg Debt-to-Income Ratio(DTI)
Select ROUND(avg(dti),4) * 100 as 'Avg_DTI' from bank_loan_data;

-- MTD Avg Debt-to-Income Ratio(DTI)
Select ROUND(avg(dti),4) * 100 as 'MTD_Avg_DTI' from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Previous MTD Avg Debt-to-Income Ratio(DTI)
Select ROUND(avg(dti),4) * 100 as 'PMTD_Avg_DTI' from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;
