# All the command below are specific for HBase please change as needed for other clients/databases
IOT_DATA_TABLE=usertable

CHECK_IF_TABLE_EXISTS="Table $IOT_DATA_TABLE doesnot exist"

TRUNCATE_TABLE="cat iotdb_scripts/delete.sql | xargs -i sh /data/tpc/iotdb-cli-0.11.0-SNAPSHOT/sbin/start-cli.sh -h 0.0.0.0 -p 55560 -u root -pw root -e '{}'"

CREATE_TABLE="cat iotdb_scripts/create.sql | xargs -i sh /data/tpc/iotdb-cli-0.11.0-SNAPSHOT/sbin/start-cli.sh -h 0.0.0.0 -p 55560 -u root -pw root -e '{}'"

CHECK_STATS_DB="status 'simple'"

#COUNT_ROWS_IN_TABLE="count 'usertable', INTERVAL=>1000000"

COUNT_ROWS_IN_TABLE="hbase org.apache.hadoop.hbase.mapreduce.RowCounter usertable"

SUT_TABLE_PATH="/hbase/data/default/usertable/*/.regioninfo"

ROW_COUNT="ROWS="

SUT_SHELL="cat"

SUT_PARAMETERS="columnfamily=cf"

