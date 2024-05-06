-- GOOD Loan vs BAD Loan
Select loan_status from bank_loan_data;
Select DISTINCT(loan_status) from bank_loan_data;
-- Good loan = "Fully Paid" & "Current" , Bad loan = "Charged Off"

--Good Loan Application %
Select  ROUND((COUNT(CASE WHEN loan_status = 'Fully Paid' Or loan_status = 'Current' THEN id END) * 100.0) 
		/ 
		(COUNT(id)),2) AS 'Good_loan_Percentage' from bank_loan_data;

--Good Loan Applications
select Count(id) as 'Good_Loan_Applications' from bank_loan_data
where loan_status = 'Fully Paid' Or loan_status = 'Current';

--Good Loan Funded Amount
select SUM(loan_amount) as 'Good_Loan_Funded_Amount' from bank_loan_data
Where loan_status = 'Fully Paid' Or loan_status = 'Current';

--Good Loan Total Received Amount
select sum(total_payment) as 'Good_Loan_Received_Amount' from bank_loan_data
Where loan_status = 'Fully Paid' Or loan_status = 'Current';

--Bad Loan Application %
Select  ROUND((COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0)
		/ 
		(COUNT(id)),2) AS 'Bad_loan_Percentage' from bank_loan_data;

--Bad Loan Applications
select Count(id) as 'Bad_Loan_Applications' from bank_loan_data
where loan_status = 'Charged Off';

--Bad Loan Funded Amount
select SUM(loan_amount) as 'Bad_Loan_Funded_Amount' from bank_loan_data
Where loan_status = 'Charged Off';

--Bad Loan Total Received Amount
select sum(total_payment) as 'Bad_Loan_Received_Amount' from bank_loan_data
Where loan_status = 'Charged Off';
------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- Loan Status Grid View
select loan_status, 
		COUNT(id) as 'Loan_Count',
		SUM(total_payment) as 'Total_Received_Amount',
		SUM(loan_amount) as 'Total_Funded_Amount' ,
		ROUND(AVG(int_rate*100),2) as 'Avg_Interest_rate',
		ROUND(AVG(dti*100),2) as 'Avg_DTI'
	from bank_loan_data
	group by loan_status;

--	MTD Loan Status Grid View
select loan_status,
		SUM(loan_amount) as 'MTD_Total_Funded_Amount' ,
		SUM(total_payment) as 'MTD_Total_Received_Amount'
	from bank_loan_data
	where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021
	group by loan_status;
