arquivo=$1
N=$2
dir_restore=$3
dir_hdfs="$4"

for i in `cat /home/h_loadbd/restore_mediacao/${arquivo}`; do
(HADOOP_OPTS="-XX:-UseGCOverheadLimit" HADOOP_CLIENT_OPTS="-XX:ParallelGCThreads=8 -XX:+UseConcMarkSweepGC -Xms64M -Xmx64M -XX:PermSize=64m -XX:MaxPermSize=128m -XX:-UseGCOverheadLimit -Xmx64m" hdfs dfs -moveFromLocal ${dir_restore}/${dir_hdfs}/*${i}*.old /main_stage/med/BKP/${dir_hdfs}/;) &
  (( ++count % ${N} == 0)) && wait
done
wait

