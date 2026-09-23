-- Table over the VPC Flow Logs in S3 (default version 2 format, space separated).
-- Run from the Athena query editor in the console.

CREATE EXTERNAL TABLE vpc_flow_logs (
    log_version INT,
    account_id STRING,
    interface_id STRING,
    srcaddr STRING,
    dstaddr STRING,
    srcport INT,
    dstport INT,
    protocol BIGINT,
    packets BIGINT,
    bytes BIGINT,
    start_time BIGINT,
    end_time BIGINT,
    action STRING,
    log_status STRING
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ' '
STORED AS TEXTFILE
LOCATION 's3://aws-cloudtrail-logs-843109108746-c279e358/AWSLogs/843109108746/vpcflowlogs/'
TBLPROPERTIES ('skip.header.line.count' = '1');
