#!/bin/bash

if [ $# -lt 1 ]
then
	echo "usage: $0 <number>"
	echo "1 = potohbl"
	echo "2 = customers"
	echo "3 = hbltoequipment"
	exit 0
fi

if [ $1 -eq 1 ]
then 
	/usr/bin/connect-standalone /etc/schema-registry/connect-avro-standalone.properties /etc/kafka-connect-jdbc/sink-postgres-potohbl.properties
fi 

if [ $1 -eq 2 ]
then
        /usr/bin/connect-standalone /etc/schema-registry/connect-avro-standalone.properties /etc/kafka-connect-jdbc/sink-postgres-customers.properties
fi

if [ $1 -eq 3 ]
then
        /usr/bin/connect-standalone /etc/schema-registry/connect-avro-standalone.properties /etc/kafka-connect-jdbc/sink-postgres-hbltoequipment.properties
fi
