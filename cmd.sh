#!/usr/bin/env bash

export JAVA_HOME=/opt/jdk1.8.0_66/jre
export HADOOP_BASE=/opt/hadoop-2.6.2
export PATH=/opt/hadoop-2.6.2/bin:$PATH

hdfs dfs -rm -r output

rm -rf output

$HADOOP_BASE/bin/hadoop jar $HADOOP_BASE/share/hadoop/tools/lib/hadoop-streaming-2.6.2.jar -inputformat org.apache.hadoop.mapred.lib.NLineInputFormat -input short.csv -output output -numReduceTasks 1 -mapper mapper.R -reducer reducer.R -file mapper.R -file reducer.R 

