-- Who used the root account, and from where?

SELECT eventtime, eventname, sourceipaddress, useridentity.type
FROM cloudtrail_logs_aws_cloudtrail_logs_843109108746_c279e358
WHERE useridentity.type = 'Root'
ORDER BY eventtime DESC
LIMIT 50;
