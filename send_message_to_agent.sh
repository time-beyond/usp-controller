#!/bin/sh
msg_id=101
endpoint=` obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -c get "Device.LocalAgent.Controller.1.EndpointID"|awk -F'=> ' '{print $2}' `
queue=` obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -c get "Device.LocalAgent.Controller.1.MTP.1.STOMP.Destination"|awk -F'=> ' '{print $2}' `
connectionid=1
msg="msg_id:\"$msg_id\" to_id:\"$endpoint\" stomp_agent_dest:\"$queue\" stomp_instance:\"$connectionid\""

source script/func.sh

if [ $# -ne 1 ]
then
	echo "Missing parameter"
	echo "eg:sh send_message_to_agent.sh get"
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

