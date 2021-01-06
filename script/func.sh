#!/bin/sh

 get()
{
	echo $msg >> ctrl_stomp.txt
	cat script/ctrl_stomp_get.txt >> ctrl_stomp.txt
	echo  "["
	cat  ctrl_stomp.txt
	echo  "]"
	obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt	
	rm ctrl_stomp.txt
        return
}

 getSupportedDM()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_getSupportedDM.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 add()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_add.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 Set()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_set.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 delete()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_delete.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 operate()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_operate.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 getInstances()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_getInstances.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}

 getSupportedProtocol()
{
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_getSupportedProtocol.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}
