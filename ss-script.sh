#!/bin/bash

#script to start/stop ec2 instance

INSTANCE_ID="enter instance id"

#start/stop ec2 instance based on user input

if [ -z "$1" ]; then
    echo "invalid command. Usage: ./ss-script.sh start/stop or NO INSTANCE-ID UPLOADED"
    exit 1
fi

if [[ "$1" == "start" ]]; then
    aws ec2 start-instances --instance-ids "$INSTANCE_ID"
    if [ $? -ne 0 ]; then
        echo "Failed to start instance. Please check the instance ID and try again."
        exit 1
    else
        echo "Instance started successfully."
    fi
elif [[ "$1" == "stop" ]]; then
    aws ec2 stop-instances --instance-ids "$INSTANCE_ID"
    if [ $? -ne 0 ]; then
        echo "Failed to stop instance. Please check the instance ID and try again."
        exit 1
    else
        echo "Instance stopped successfully."
    fi
else
    echo "invalid command. Usage: ./ss-script.sh start/stop"
    exit 1
fi


#check if command executed successfully

