/* Audit table creation for cdc_covid_data_local */
DROP TABLE IF EXISTS `group_project_225`.`audit_cdc_covid_data_local`;
CREATE TABLE `group_project_225`.`audit_cdc_covid_data_local`
(
`auditAction` ENUM ('INSERT', 'UPDATE', 'DELETE'),
`auditTimestamp` DATETIME DEFAULT CURRENT_TIMESTAMP,
`auditId` INT AUTO_INCREMENT ,`Performed By` varchar(200),`case_month` varchar(8) ,`res_state` varchar(2) ,`state_fips_code` varchar(2) ,`res_county` varchar(20) ,
`county_fips_code` varchar(10) ,`age_group` varchar(20) ,`sex` varchar(10) ,`race` varchar(50) ,`ethnicity` varchar(50) ,`case_positive_specimen_interval` int ,
`case_onset_interval` int ,`process` varchar(50) ,`exposure_yn` varchar(20) ,`current_status` varchar(30) ,`symptom_status` varchar(25) ,
`hosp_yn` varchar(20) ,`icu_yn` varchar(20) ,`death_yn` varchar(20) ,`underlying_conditions_yn` varchar(5),
PRIMARY KEY (`auditId`),
INDEX (`auditTimestamp`)
);
/* Audit table insert trigger for cdc_covid_data_local */
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_local_inserts`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_local_inserts`
AFTER INSERT ON `group_project_225`.`cdc_covid_data_local`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_local`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,
`case_positive_specimen_interval` ,`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,
`underlying_conditions_yn`)
VALUES
('INSERT',user(),NEW.case_month,NEW.res_state,NEW.state_fips_code ,NEW.res_county ,NEW.county_fips_code ,NEW.age_group,NEW.sex,NEW.race,
NEW.ethnicity,NEW.case_positive_specimen_interval ,NEW.case_onset_interval ,NEW.process,NEW.exposure_yn,NEW.current_status,NEW.symptom_status,
NEW.hosp_yn,NEW.icu_yn,NEW.death_yn,NEW.underlying_conditions_yn);

/* Audit table update trigger for cdc_covid_data_local */
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_local_updates`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_local_updates`
AFTER UPDATE ON `group_project_225`.`cdc_covid_data_local`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_local`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,
`case_positive_specimen_interval` ,`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,
`underlying_conditions_yn`)
VALUES
('UPDATE',user(),NEW.case_month,NEW.res_state,NEW.state_fips_code ,NEW.res_county ,NEW.county_fips_code ,NEW.age_group,NEW.sex,NEW.race,
NEW.ethnicity,NEW.case_positive_specimen_interval ,NEW.case_onset_interval ,NEW.process,NEW.exposure_yn,NEW.current_status,NEW.symptom_status,
NEW.hosp_yn,NEW.icu_yn,NEW.death_yn,NEW.underlying_conditions_yn);

/* Audit table delete trigger for cdc_covid_data_local */
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_local_deletes`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_local_deletes`
AFTER DELETE ON `group_project_225`.`cdc_covid_data_local`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_local`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,`case_positive_specimen_interval` ,
`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,`underlying_conditions_yn`)
VALUES
('DELETE',user(),OLD.case_month,OLD.res_state,OLD.state_fips_code ,OLD.res_county ,OLD.county_fips_code ,OLD.age_group,OLD.sex,OLD.race,OLD.ethnicity,
OLD.case_positive_specimen_interval ,OLD.case_onset_interval ,OLD.process,OLD.exposure_yn,OLD.current_status,OLD.symptom_status,OLD.hosp_yn,OLD.icu_yn,
OLD.death_yn,OLD.underlying_conditions_yn);

/* Audit table creation for cdc_covid_data_without_partition */
DROP TABLE IF EXISTS `group_project_225`.`audit_cdc_covid_data_without_partition`;
CREATE TABLE `group_project_225`.`audit_cdc_covid_data_without_partition`
(
`auditAction` ENUM ('INSERT', 'UPDATE', 'DELETE'),
`auditTimestamp` DATETIME DEFAULT CURRENT_TIMESTAMP,
`auditId` INT AUTO_INCREMENT ,`Performed By` varchar(200),`case_month` varchar(8) ,`res_state` varchar(2) ,`state_fips_code` varchar(2) ,`res_county` varchar(20) ,
`county_fips_code` varchar(10) ,`age_group` varchar(20) ,`sex` varchar(10) ,`race` varchar(50) ,`ethnicity` varchar(50) ,`case_positive_specimen_interval` int ,
`case_onset_interval` int ,`process` varchar(50) ,`exposure_yn` varchar(20) ,`current_status` varchar(30) ,`symptom_status` varchar(25) ,
`hosp_yn` varchar(20) ,`icu_yn` varchar(20) ,`death_yn` varchar(20) ,`underlying_conditions_yn` varchar(5),
PRIMARY KEY (`auditId`),
INDEX (`auditTimestamp`)
);

/* Audit table insert trigger for cdc_coid_data_without_partition*/
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_without_partition_inserts`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_without_partition_inserts`
AFTER INSERT ON `group_project_225`.`cdc_covid_data_without_partition`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_without_partition`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,
`case_positive_specimen_interval` ,`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,
`underlying_conditions_yn`)
VALUES
('INSERT',user(),NEW.case_month,NEW.res_state,NEW.state_fips_code ,NEW.res_county ,NEW.county_fips_code ,NEW.age_group,NEW.sex,NEW.race,
NEW.ethnicity,NEW.case_positive_specimen_interval ,NEW.case_onset_interval ,NEW.process,NEW.exposure_yn,NEW.current_status,NEW.symptom_status,
NEW.hosp_yn,NEW.icu_yn,NEW.death_yn,NEW.underlying_conditions_yn);

/* Audit table update trigger for cdc_coid_data_without_partition*/
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_without_partition_updates`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_without_partition_updates`
AFTER UPDATE ON `group_project_225`.`cdc_covid_data_without_partition`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_without_partition`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,
`case_positive_specimen_interval` ,`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,
`underlying_conditions_yn`)
VALUES
('UPDATE',user(),NEW.case_month,NEW.res_state,NEW.state_fips_code ,NEW.res_county ,NEW.county_fips_code ,NEW.age_group,NEW.sex,NEW.race,
NEW.ethnicity,NEW.case_positive_specimen_interval ,NEW.case_onset_interval ,NEW.process,NEW.exposure_yn,NEW.current_status,NEW.symptom_status,
NEW.hosp_yn,NEW.icu_yn,NEW.death_yn,NEW.underlying_conditions_yn);

/* Audit table delete trigger for cdc_coid_data_without_partition*/
DROP TRIGGER IF EXISTS `group_project_225`.`cdc_covid_data_without_partition_deletes`;
CREATE TRIGGER `group_project_225`.`cdc_covid_data_without_partition_deletes`
AFTER DELETE ON `group_project_225`.`cdc_covid_data_without_partition`
FOR EACH ROW INSERT INTO `group_project_225`.`audit_cdc_covid_data_without_partition`
(`auditAction`,`Performed By`,`case_month`,`res_state`,`state_fips_code` ,`res_county` ,`county_fips_code` ,`age_group`,`sex`,`race`,`ethnicity`,`case_positive_specimen_interval` ,
`case_onset_interval`,`process`,`exposure_yn`,`current_status`,`symptom_status`,`hosp_yn`,`icu_yn`,`death_yn`,`underlying_conditions_yn`)
VALUES
('DELETE',user(),OLD.case_month,OLD.res_state,OLD.state_fips_code ,OLD.res_county ,OLD.county_fips_code ,OLD.age_group,OLD.sex,OLD.race,OLD.ethnicity,
OLD.case_positive_specimen_interval ,OLD.case_onset_interval ,OLD.process,OLD.exposure_yn,OLD.current_status,OLD.symptom_status,OLD.hosp_yn,OLD.icu_yn,
OLD.death_yn,OLD.underlying_conditions_yn);

