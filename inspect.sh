#!/bin/sh
docker run -it \
    --network=li3dsarduinodocker_default \
    --env ROS_HOSTNAME=arduino_client \
    --env ROS_MASTER_URI=http://master:11311 \
    dockerarduino_arduino \
    /bin/bash
