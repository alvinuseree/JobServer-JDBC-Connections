CREATE EXTERNAL TABLE `if_mortgage`(
  `account_number` string, 
  `plan_id` string, 
  `affil_id` string, 
  `ph_start_date` string, 
  `ph_end_date` string, 
  `next_payment_due_date` string, 
  `title` string, 
  `name` string, 
  `home_phone` string, 
  `mobile_phone_number` string, 
  `house_name` string, 
  `house_number` string, 
  `street` string, 
  `town_city` string, 
  `county` string, 
  `postcode` string, 
  `arrears` string, 
  `arrearslm` string, 
  `edh_ingest_ts` timestamp, 
  `edh_ingest_delete_flag` boolean, 
  `edh_source_extract_ts` timestamp, 
  `edh_brand_id` string, 
  `edh_ingest_map` string)
PARTITIONED BY ( 
  `ingestion_year` int, 
  `ingestion_month` int, 
  `ingestion_day` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://DEVHDPVM01HA/HADOOP/SCHEMA/PAYMENT_HOLIDAY_AL01055/IF_MORTGAGE/GOOD'
TBLPROPERTIES (
  'transient_lastDdlTime'='1599227142')