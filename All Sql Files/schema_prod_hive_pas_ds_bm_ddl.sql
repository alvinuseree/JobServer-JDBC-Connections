CREATE TABLE `ds_bm`(
  `bm_collateral_id` string, 
  `lonote` string, 
  `ph_start` date, 
  `ph_end` date, 
  `next_payment_due_date` date, 
  `customer_mobile_phone` string, 
  `customer_home_phone` string, 
  `title` string, 
  `first_name` string, 
  `last_name` string, 
  `address_l1` string, 
  `address_l2` string, 
  `address_l3` string, 
  `post_code` string, 
  `email_address` string, 
  `arrears` double, 
  `arrears_last_month` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://DEVHDPVM01HA/apps/hive/warehouse/schema_prod_hive_pas.db/ds_bm'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1601364233')