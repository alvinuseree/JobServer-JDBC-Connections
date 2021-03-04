CREATE TABLE `ds_if`(
  `account_number` string, 
  `plan_id` string, 
  `brand` string, 
  `ph_start_date` date, 
  `ph_end_date` date, 
  `next_payment_date` date, 
  `title` string, 
  `name` string, 
  `home_phone` string, 
  `mobile_phone` string, 
  `house_name` string, 
  `house_number` string, 
  `street` string, 
  `town_city` string, 
  `county` string, 
  `postcode` string, 
  `arrears_balance` double, 
  `arrears_end_of_prev_month` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://DEVHDPVM01HA/apps/hive/warehouse/schema_prod_hive_pas.db/ds_if'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'numFiles'='2', 
  'numRows'='33', 
  'rawDataSize'='4497', 
  'totalSize'='1742', 
  'transient_lastDdlTime'='1601371466')