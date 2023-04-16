/*
Author: Daniel Evenschor
The total number of cases per each month
*/
SELECT COUNT(mt.case_id) AS num_of_case,mt.per_month FROM
(SELECT  case_id,received_date,
CASE 
    WHEN received_date LIKE '%-01-%' THEN 'January'
    WHEN received_date LIKE '%-02-%' THEN 'Feburary'
    WHEN received_date LIKE '%-03-%' THEN 'March'
    WHEN received_date LIKE '%-04-%' THEN 'April'
    WHEN received_date LIKE '%-05-%' THEN 'May'
    WHEN received_date LIKE '%-06-%' THEN 'June'
    WHEN received_date LIKE '%-07-%' THEN 'July'
    WHEN received_date LIKE '%-08-%' THEN 'August'
    WHEN received_date LIKE '%-09-%' THEN 'Sempember'
    WHEN received_date LIKE '%-10-%' THEN 'October'
    WHEN received_date LIKE '%-11-%' THEN 'November'
    WHEN received_date LIKE '%-12-%' THEN 'December'
END AS per_month
FROM full_view) as mt
GROUP BY per_month
ORDER BY num_of_case DESC;
