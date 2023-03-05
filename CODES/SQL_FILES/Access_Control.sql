

create user 'gayathri' identified by 'welcome123';
create user 'keerthana' identified by 'welcome123';
create user 'deepasha' identified by 'welcome123';

GRANT SELECT,INSERT,UPDATE,DELETE ON group_project_225.cdc_covid_data_local TO 'gayathri' WITH GRANT OPTION;
GRANT SELECT,INSERT,UPDATE,DELETE ON group_project_225.cdc_covid_data_without_partition TO 'gayathri' WITH GRANT OPTION;
GRANT SELECT,INSERT ON group_project_225.cdc_covid_data_local TO 'keerthana' WITH GRANT OPTION;
GRANT SELECT,INSERT ON group_project_225.cdc_covid_data_without_partition TO 'keerthana' WITH GRANT OPTION;
GRANT SELECT ON group_project_225.cdc_covid_data_local TO 'deepasha' WITH GRANT OPTION;
GRANT SELECT ON group_project_225.cdc_covid_data_without_partition TO 'deepasha' WITH GRANT OPTION;

