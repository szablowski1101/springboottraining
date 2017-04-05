@echo off
set JVM_OPTS=-XX:MetaspaceSize=64M
set GC_OPTS=-Xloggc:target\gc.log -XX:+PrintGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps

echo Running Production Plan: java %GC_OPTS% %JVM_OPTS% -jar target\camel-0.0.1-SNAPSHOT.jar 
java %GC_OPTS% %JVM_OPTS% -jar target\camel-0.0.1-SNAPSHOT.jar