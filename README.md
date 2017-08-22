# HdfsMoveFromLocal
This script is used to move a lot of flat files to HDFS using parallelism

Usually this is script run as:

nonup ./move_Month.sh > ~/out.nohup &


move_Month.sh - It will list files in a directory according to some criteria and output it to a txt file.

move_tunned.sh - It executes moveFromLocal command based on txt file opening 20 parallel JVMs (default value) passing 1000 files to each JVM.