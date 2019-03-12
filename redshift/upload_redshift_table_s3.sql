-- https://docs.aws.amazon.com/redshift/latest/dg/t_Unloading_tables.html


UNLOAD ('

SELECT *
FROM <db_name>.<table_name>;')
TO 's3://<s3_bucket>/<s3_file>/<s3_file_name>.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>' 
ALLOWOVERWRITE
delimiter ',' 
PARALLEL OFF ;



