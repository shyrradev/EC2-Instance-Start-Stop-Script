#!/bin/bash

#script to start/stop ec2 instance

INSTANCE_ID="enter instance id"

#start/stop ec2 instance based on user input

if [ $1 == "start" ]; then
    aws ec2 start-instances --instance-ids $INSTANCE_ID
    echo "instance started"
elif [ $1 == "stop" ]; then
    aws ec2 stop-instances --instance-ids $INSTANCE_ID
    echo "instance stopped"
else
    echo "invalid command. Usage: ./ss-script.sh start/stop"
fi

#check if command executed successfully

if [ $? -eq 0 ]; then
    echo "$INSTANCE_ID EXECUTED SUCCESSFULLY"
    else
    echo "EXECUTION FAILED"
fi