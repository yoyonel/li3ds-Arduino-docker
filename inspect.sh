#!/bin/sh

# url: http://unix.stackexchange.com/questions/23111/what-is-the-eval-command-in-bash
CUR_PATH=$(realpath .)

# url: https://docs.docker.com/engine/reference/commandline/run/

#li3dsdockerarduino_arduino \
docker run -it \
    --network=li3ds_default \
    --env ROS_HOSTNAME=arduino_client \
    --env ROS_MASTER_URI=http://ros_master:11311 \
    -v $CUR_PATH/arduino/li3ds-Arduino:/root/li3ds-Arduino \
    --device=/dev/ttyACM0:/dev/ttyACM0 \
    $1 \
    /bin/zsh
