CREATE TABLE `count_recon`(
  `count_bm` string, 
  `count_if` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://DEVHDPVM01HA/apps/hive/warehouse/schema_payment_holiday_al01055.db/count_recon'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'numFiles'='1', 
  'numRows'='1', 
  'rawDataSize'='172', 
  'totalSize'='305', 
  'transient_lastDdlTime'='1601285758')