import time
import mysql.connector
from getpass import getpass
from mysql.connector import connect, Error
from getpass import getpass
from datetime import datetime


start_dt = datetime.now()
start_ts=datetime.timestamp(start_dt)
try:
    with connect(host="lab-assignment-225.cibzfcia066j.us-east-1.rds.amazonaws.com",
    user='admin',password='welcome123',database="group_project"
    ) as connection:
        create_states_table_query = "Select count(*) from (select * from cdc_covid_data LIMIT 10000) as t1"
        with connection.cursor() as cursor:
            cursor.execute(create_states_table_query)
            result = cursor.fetchall()
except Error as e:
    print(e)
end_dt=datetime.now()
end_ts=datetime.timestamp(end_dt)
res = end_dt - start_dt
print('Start time: ',start_dt,' End time: ',end_dt,' Time taken: ',format(res))