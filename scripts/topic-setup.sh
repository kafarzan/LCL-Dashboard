if [ $# -eq 0 ]
then 
	echo "usage: $0 <topic one> <topic two> etc."
fi

declare -i zookeeper
zookeeper=`ps aux | grep zookeeper | wc -l`
if [ $zookeeper -eq 0 ]
then 
	echo "no zookeeper!"
	exit 0
fi

for var in "$@"
do 
	/usr/bin/kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $var
done
