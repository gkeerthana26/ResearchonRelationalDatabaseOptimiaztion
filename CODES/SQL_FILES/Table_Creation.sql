create table group_project_225.cdc_covid_data_without_partition (
case_month varchar(8) , res_state varchar(2) , state_fips_code varchar(2) ,
res_county varchar(20) ,
county_fips_code varchar(10) ,
age_group varchar(20),
sex varchar(10) , race varchar(50) ,
ethnicity varchar(50) , case_positive_specimen_interval int ,
case_onset_interval int , process varchar(50) ,
exposure_yn varchar(20) ,
current_status varchar(30) ,
symptom_status varchar(25) ,
hosp_yn varchar(20) ,
icu_yn varchar(20) , death_yn varchar(20) ,
underlying_conditions_yn varchar(5) 
);



create table group_project_225.cdc_covid_data_local (
case_month varchar(8) , res_state varchar(2) , state_fips_code varchar(2) ,
res_county varchar(20) ,
county_fips_code varchar(10) ,
age_group varchar(20),
sex varchar(10) , race varchar(50) ,
ethnicity varchar(50) , case_positive_specimen_interval int ,
case_onset_interval int , process varchar(50) ,
exposure_yn varchar(20) ,
current_status varchar(30) ,
symptom_status varchar(25) ,
hosp_yn varchar(20) ,
icu_yn varchar(20) , death_yn varchar(20) ,
underlying_conditions_yn varchar(5) 
)
PARTITION BY LIST COLUMNS(age_group) (
    PARTITION pgroup_1 VALUES IN('0 - 17 years'),
    PARTITION pgroup_2 VALUES IN('65+ years'),
    PARTITION pgroup_3 VALUES IN('18 to 49 years'),
    PARTITION pgroup_4 VALUES IN('50 to 64 years'),
	PARTITION pgroup_5 VALUES IN('NA'),
	PARTITION pgroup_6 VALUES IN('Missing')
);