#!/bin/sh
###### This script is designed to be called from other scripts, to set environment variables including the bind
###### for cache products, as well as any JVM options.

### Set your bind address for the tests to use. Could be an IP, host name or a reference to an environment variable.
BIND_ADDRESS=${MY_BIND_ADDRESS}
JG_FLAGS="-Dresolve.dns=false -Djgroups.timer.num_threads=4"
# JVM_OPTS="-server -Xmx1024M -Xms1024M"
JVM_OPTS="-Xmn256m -Xms1024m -Xmx1024m -XX:MaxPermSize=256m -Xss512k -Xverify:none -XX:+UseConcMarkSweepGC -XX:+TieredCompilation -XX:+UseCompressedOops"
JVM_OPTS="$JVM_OPTS -Xloggc:gc.log -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintClassHistogram -XX:+HeapDumpOnOutOfMemoryError"
JVM_OPTS="$JVM_OPTS $JG_FLAGS"
JPROFILER_HOME=${HOME}/jprofiler6
JPROFILER_CFG_ID=103

