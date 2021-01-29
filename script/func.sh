#!/bin/sh

  execute()
 {
	cd ../
        echo $msg >> ctrl_stomp.txt
        cat script/$1 >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt

 }

  modify()
 {
	echo "for example:"
 	cat $1
 }

 get()
{
	echo "1 modify stomp message"
       	echo "2 send default message"
	read number
	if [ $number == 2 ]
	then
		execute ctrl_stomp_get.txt
	elif [ $number == 1 ]
	then
		modify ctrl_stomp_get.txt
	fi

        return
}

 getSupportedDM()
{
	cd ../
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
	cd ../
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
	cd ../
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
	cd ../
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
	cd ../
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
	cd ../
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
	cd ../
	echo $msg >> ctrl_stomp.txt
        cat script/ctrl_stomp_getSupportedProtocol.txt >> ctrl_stomp.txt
        echo  "["
        cat  ctrl_stomp.txt
        echo  "]"
        obuspa  -v4 -f my_usp.db -r factory_reset_example.txt -i eno1 -x ctrl_stomp.txt
        rm ctrl_stomp.txt
        return
}
