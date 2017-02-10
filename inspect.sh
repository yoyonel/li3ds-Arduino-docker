#!/bin/sh

#li3dsdockerarduino_arduino \
docker run -it \
    --network=li3dsarduinodocker_default \
    --env ROS_HOSTNAME=arduino_client \
    --env ROS_MASTER_URI=http://master:11311 \
    $1 \
    /bin/bash
