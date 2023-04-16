# Author Daniel Evenschor  
# Identifying Top worksite locations(states) in terms of average yearly wage

SELECT 
    worksite_state,
    CAST(AVG(yearly_wage) AS DECIMAL (10 , 2 )) AS avg_yearly_wage
FROM
    full_view
WHERE
    flag_for_full_time_position = 'TRUE'
        AND case_status <> 'Denied'
        AND case_status <> 'Withdrawn'
GROUP BY worksite_state
ORDER BY avg_yearly_wage DESC
LIMIT 10
;
# Alaska is the highest paying worksite state with avg of ~300k per year
# Since this is very much an outlier, Colorado is 2nd with an avg of ~160k per year
;
