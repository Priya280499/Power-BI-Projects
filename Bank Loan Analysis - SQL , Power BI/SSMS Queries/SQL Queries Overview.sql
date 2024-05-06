--Monthly trends by Issue Date 
SELECT 
	MONTH(issue_date) AS 'Month_Number', 
	DATENAME(MONTH, issue_date) AS 'Month_name', 
	COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

--Regional Analysis by State
select address_state as 'State',
    COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
from bank_loan_data
group by address_state
order by address_state;

--Loan Term Analysis
select DISTINCT(term) from bank_loan_data;
select term as 'Term',
    COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
from bank_loan_data
group by term
order by term;

--Employee Length Analysis 
select emp_length as 'Employee_Length',
    COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
from bank_loan_data
group by emp_length
order by emp_length;

--Loan Purpose Breakdown 
select DISTINCT(purpose) from bank_loan_data;
select purpose as 'Loan_Purpose',
    COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
from bank_loan_data
group by purpose
order by COUNT(id) desc;

--Home Ownership Analysis 
select DISTINCT(home_ownership) from bank_loan_data;
select home_ownership as 'Home_Ownership',
    COUNT(id) AS 'Total_Loan_Applications',
	SUM(loan_amount) AS 'Total_Funded_Amount',
	SUM(total_payment) AS 'Total_Amount_Received'
from bank_loan_data
group by home_ownership
order by COUNT(id) desc;