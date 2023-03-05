drop database if exists memorypressure;
create database memorypressure;
use memorypressure;
create table memorypressure.test_table(
case_month varchar(8) , res_state varchar(2) , state_fips_code varchar(2) ,
res_county varchar(20) ,
county_fips_code varchar(10) ,
age_group varchar(20),
sex varchar(10) , race varchar(20) ,
ethnicity varchar(20) , case_positive_specimen_interval int ,
case_onset_interval int , process varchar(20) ,
exposure_yn varchar(20) ,
current_status varchar(30) ,
symptom_status varchar(25) ,
hosp_yn varchar(20) ,
icu_yn varchar(20) , death_yn varchar(20) ,
underlying_conditions_yn varchar(5) 
);

set global local_infile=1;
LOAD DATA LOCAL INFILE "D:/DATA225/Project/DATA/COVID-19_Case_Surveillance_Public_Use_Data_with_Geography-000.csv"
INTO TABLE test_table
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(case_month,res_state,state_fips_code,res_county,county_fips_code,age_group,sex,race,ethnicity,case_positive_specimen_interval,case_onset_interval,
process,exposure_yn,current_status,symptom_status,hosp_yn,icu_yn,death_yn,underlying_conditions_yn);

create table test_result1 as (select * from test_table where res_state='TN');
create table test_result2 as (select case_month,ethnicity,hosp_yn from test_table where res_state='TN');

select table_schema,table_name,engine,table_rows,data_length,(data_length/1024/1024) as 'Size_in_MB' , data_free,table_collation from information_schema.tables 
where table_schema='memorypressure' and table_name in ('test_result1','test_result2');





