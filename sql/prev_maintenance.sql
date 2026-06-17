CREATE DATABASE prev_maintenance

select * from rawdata limit 5

#Average conditions per type of product:
SELECT count("UDI"), "Type", avg(air_temp_k) as avgair, avg(process_temp_k) as avgproc, avg(torque_nm) as avgtor FROM rawdata
GROUP BY "Type";

#CREATE VIEW performance AS
#SELECT count(*) as quantity, "Type", avg("air_temp_k") as avgairtemp, avg(process_temp_k) as avgproctemp, avg(torque_nm) as avgtor,
#avg("rot_speed_rpm") as avgspeed, avg("tool_wear_min") as avgtooltime
#FROM rawdata GROUP BY "Type";
#select * from performance

CREATE VIEW failures AS
SELECT rawdata."Type", sum(rawdata.machine_failure) as failure_count, 
sum(rawdata."HDF") as hdf, sum(rawdata."OSF") as osf, sum(rawdata."PWF") as pwf, sum(rawdata."RNF") as rnf, sum(rawdata."TWF") as twf
from rawdata GROUP BY rawdata."Type";
select * from failures

CREATE VIEW specific_failures AS SELECT rawdata."UDI", rawdata.product_id, rawdata."Type", rawdata.machine_failure,
(rawdata.process_temp_k-rawdata.air_temp_k) as temp_dif, rawdata.tool_wear_min,
(rawdata.torque_nm*rawdata.rot_speed_rpm*2*pi()/60) as power_watt, (rawdata.tool_wear_min*rawdata.torque_nm) as strain,
rawdata."HDF", rawdata."OSF", rawdata."PWF", rawdata."RNF", rawdata."TWF"
from rawdata

CREATE VIEW causes AS
Select rawdata."UDI",rawdata."Type",'hdf' as failure_cause from rawdata where rawdata."HDF"=1 union ALL
Select rawdata."UDI",rawdata."Type",'osf' from rawdata where rawdata."OSF"=1 union ALL
Select rawdata."UDI",rawdata."Type",'pwf' from rawdata where rawdata."PWF"=1 union ALL
Select rawdata."UDI",rawdata."Type",'rnf' from rawdata where rawdata."RNF"=1 union ALL
Select rawdata."UDI",rawdata."Type",'twf' from rawdata where rawdata."TWF"=1