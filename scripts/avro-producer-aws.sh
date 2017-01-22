if [ $# -lt 1 ]
then
	echo "enter a number to select a topic"
	echo "1 = potohbl"
	echo "2 = customers"
	echo "3 = hbltoequipment"
	exit 0
fi

if [ $1 -eq 1 ]
then
	/usr/bin/kafka-avro-console-producer --broker-list localhost:9092 --topic potohbl --property value.schema='{"type": "record", "name": "PoToHBL", "fields": [ {"name": "po", "type": "string"}, {"name": "customerid",  "type": "string"}, {"name": "hbl", "type": "string"}, {"name": "item",  "type": "string"}, {"name": "quantity",  "type": "double"}, {"name": "orderdate",  "type": "string"}]}'
fi

if [ $1 -eq 2 ]
then 
	/usr/bin/kafka-avro-console-producer --broker-list localhost:9092 --topic customers --property value.schema='{"type": "record", "name": "users", "fields": [{"name": "userid", "type": "string"}, {"name": "pwd",  "type": "string"}, {"name": "customerid", "type": "string"}]}'
fi

if [ $1 -eq 3 ]
then 
	/usr/bin/kafka-avro-console-producer --broker-list localhost:9092 --topic hbltoequipment --property value.schema='{"type": "record", "name": "HBLToEquipment", "fields": [ {"name": "hbl", "type": "string"}, {"name": "equip_no",  "type": "string"}, {"name": "por",  "type": "string"}, {"name": "por_here",  "type": "boolean"}, {"name": "por_ar", "type": "string"}, {"name": "por_dest",  "type": "string"},{"name": "por_city",  "type": "string"},  {"name": "por_country",  "type": "string"}, {"name": "pol",  "type": "string"}, {"name": "pol_here",  "type": "boolean"}, {"name": "pol_ar", "type": "string"}, {"name": "pol_dest",  "type": "string"}, {"name": "pol_city",  "type": "string"}, {"name": "pol_country",  "type": "string"}, {"name": "pod",  "type": "string"}, {"name": "pod_here",  "type": "boolean"}, {"name": "pod_ar", "type": "string"}, {"name": "pod_dest",  "type": "string"}, {"name": "pod_city",  "type": "string"}, {"name": "pod_country",  "type": "string"}, {"name": "pdel",  "type": "string"}, {"name": "pdel_here",  "type": "boolean"}, {"name": "pdel_ar", "type": "string"}, {"name": "pdel_dest",  "type": "string"}, {"name": "pdel_city",  "type": "string"}, {"name": "pdel_country",  "type": "string"} ]}'
fi
