#!/bin/sh

function help()
{
	echo '=============================================================='
	echo "This shell is to send spec msg to a spec agent"
	echo "user should known the queue names( or EID if this parameter can be used) of the existing agents"
	echo "=============================================================="
}



msg_id=101
endpoint=$3
queue=$2
connectionid=1
msg="msg_id:\"$msg_id\" to_id:\"$endpoint\" stomp_agent_dest:\"$queue\" stomp_instance:\"$connectionid\""

source ./func.sh

help


if [ $# -ne 3 ]
then
	echo "Missing parameter"
	echo "$2 <to which agent queue> $3<to endpointid>"
	echo "support 'get'"
	echo "        'getSupportedDM'"
	echo "        'add'"
	echo "        'set'"
	echo "        'delete'"
	echo "        'operate'"
	echo "        'getInstances'"
	echo "        'getSupportedProtocol'"
else
	if [ "$1" == "get" ]	
	then
		get
	fi
	if [ "$1" == "getSupportedDM" ]	
	then
		getSupportedDM
	fi
	if [ "$1" == "add" ]	
	then
		add
	fi
	if [ "$1" == "set" ]	
	then
		Set	
	fi
	if [ "$1" == "delete" ]	
	then
		delete
	fi
	if [ "$1" == "operate" ]	
	then
		operate
	fi
	if [ "$1" == "getInstances" ]	
	then
		getInstances
	fi
	if [ "$1" == "getSupportedProtocol" ]	
	then
		getSupportedProtocol
	fi
fi

