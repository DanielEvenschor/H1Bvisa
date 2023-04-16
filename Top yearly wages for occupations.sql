# Author Daniel Evenschor 
# Calculation of Top yearly wages for the different occupations

SELECT 
    soc_title,
    CAST(AVG(yearly_wage) AS DECIMAL (10 , 2 )) AS avg_wage
FROM
    full_view
WHERE
    flag_for_full_time_position = 'TRUE'
        AND case_status <> 'Denied'
        AND case_status <> 'Withdrawn'
        AND visa_class = 'H1B' 
GROUP BY soc_id
ORDER BY avg_wage DESC
LIMIT 10
;
# Healthcare and Technical Occupations have the highest avg_wage ~ 225k / year for full time positions
# 2nd place, Educational and Library Occupations with avg_wage ~180k / year for full time positions
