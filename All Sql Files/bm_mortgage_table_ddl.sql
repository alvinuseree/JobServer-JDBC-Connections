CREATE EXTERNAL TABLE `bm_mortgage`(
  `bm_mortgage_collateral_id` string, 
  `lonote` string, 
  `ph_start` string, 
  `ph_end` string, 
  `next_payment_date` string, 
  `mobile_phone` string, 
  `home_phone` string, 
  `title` string, 
  `first_name` string, 
  `last_name` string, 
  `add_l1` string, 
  `add_l2` string, 
  `add_l3` string, 
  `post_code` string, 
  `email` string, 
  `currarrs` string, 
  `lmarrs` string, 
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