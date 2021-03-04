CREATE EXTERNAL TABLE `recon_table`(
  `file_name` string, 
  `file_count` string, 
  `cntrl_file_name` string, 
  `cntrl_file_count` string, 
  `duplicate_count` string, 
  `duplication_ratio` double, 
  `raw_count` string, 
  `schema_count` string, 
  `status` string, 
  `reason` string, 
  `ingestion_time` timestamp)
PARTITIONED BY ( 
  `ingestion_year` int, 
  `ingestion_month` int, 
  `ingestion_day` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://DEVHDPVM01HA/HADOOP/SCHEMA/PAYMENT_HOLIDAY_AL01055/CONTROL_FILE/GOOD'
TBLPROPERTIES (
  'transient_lastDdlTime'='1599222573')