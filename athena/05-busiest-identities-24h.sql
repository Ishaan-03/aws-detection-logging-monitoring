-- Which identity made the most API calls in the last 24 hours, and from which IPs?

SELECT useridentity.arn AS arn,
       sourceipaddress,
       COUNT(*) AS call_count
FROM cloudtrail_logs_aws_cloudtrail_logs_843109108746_c279e358
WHERE from_iso8601_timestamp(eventtime) > current_timestamp - INTERVAL '24' HOUR
GROUP BY useridentity.arn, sourceipaddress
ORDER BY call_count DESC
LIMIT 20;
