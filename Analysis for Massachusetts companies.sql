# Author Daniel Evenschor  
# Analysis for The Massachusetts companies 

SELECT 
    employer_name,
    soc_title, 
    Count(case_id)
FROM
    full_view
WHERE
    flag_for_full_time_position = 'TRUE'
        AND case_status <> 'Denied'
        AND case_status <> 'Withdrawn'
        AND visa_class = 'H1B' 
        AND employer_name = 'Virt ' 
GROUP BY soc_id, employer_id
ORDER BY total_working_position DESC
LIMIT 100
;
# Fidelity Technology is looking mainly for Computer and Mathematical Occupations
# Change Filter to: "employer_name = 'Wayfair ' and repeat
# Wayfair is also looking for Computer and Mathematical Occupations
# Virt as well
