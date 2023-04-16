# Author Daniel Evenschor  
# Which are the top employers in a certain state by petitions 

SELECT 
    employer_name,
    total_working_position as total_petitions,
    employer_state
FROM
    full_view
WHERE
    flag_for_full_time_position = 'TRUE'
        AND case_status <> 'Denied'
        AND case_status <> 'Withdrawn'
        AND visa_class = 'H1B' 
GROUP BY employer_id, employer_state
ORDER BY total_working_position DESC
LIMIT 100
;
# 1. Infosys Limited in Texas with 85922 applications
# 2. Amazon Services in Washington with 74621 applications
# 3. Qualcomm in California with 50966 applications
# special insight : "AND employer_state = 'MA' if you love boston (massachussets), the top employer by petitions is Fidelity Technology with 1135 petitions
# 2nd is Wayfair with 1067 and 3rd Virt
