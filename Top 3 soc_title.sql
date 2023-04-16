/*
Author: Daniel Evenschor
Top 3 in each soc_title
*/
SELECT t2.num_of_soc,t2.soc_title,t2.worksite_state,t2.ranking FROM 
(SELECT t.num_of_soc,t.soc_title,t.worksite_state,
RANK()OVER(PARTITION BY t.soc_title ORDER BY num_of_soc DESC) AS ranking
FROM(
SELECT COUNT(soc_title) as num_of_soc,soc_title, worksite_state FROM full_view
GROUP BY soc_title,worksite_state
ORDER BY num_of_soc DESC) AS t) AS t2
WHERE t2.ranking<=3
;
