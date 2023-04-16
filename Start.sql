
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `devenschor`@`%` 
    SQL SECURITY DEFINER
VIEW `new_h1b`.`full_view` AS
    SELECT 
        `c`.`worksite_id` AS `worksite_id`,
        `c`.`soc_id` AS `soc_id`,
        `c`.`naics_id` AS `naics_id`,
        `c`.`employer_id` AS `employer_id`,
        `c`.`case_id` AS `case_id`,
        `c`.`case_status` AS `case_status`,
        `c`.`received_date` AS `received_date`,
        `c`.`decision_date` AS `decision_date`,
        `c`.`visa_class` AS `visa_class`,
        `c`.`flag_for_full_time_position` AS `flag_for_full_time_position`,
        `c`.`yearly_wage` AS `yearly_wage`,
        `e`.`employer_name` AS `employer_name`,
        `e`.`total_working_position` AS `total_working_position`,
        `e`.`employer_state` AS `employer_state`,
        `n`.`naics_title` AS `naics_title`,
        `s`.`soc_title` AS `soc_title`,
        `w`.`worksite_state` AS `worksite_state`
    FROM
        ((((`new_h1b`.`case` `c`
        JOIN `new_h1b`.`employer` `e` ON ((`c`.`employer_id` = `e`.`employer_id`)))
        JOIN `new_h1b`.`naics` `n` ON ((`c`.`naics_id` = `n`.`naics_id`)))
        JOIN `new_h1b`.`soc` `s` ON ((`c`.`soc_id` = `s`.`soc_id`)))
        JOIN `new_h1b`.`worksite` `w` ON ((`c`.`worksite_id` = `w`.`worksite_id`)))
;
