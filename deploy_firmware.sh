#!/bin/bash

docker run \
    -it \
    -v $(realpath ~/Prog/li3ds-Arduino-docker/arduino/li3ds-Arduino/LI3DS_ARDUINO):/root/LI3DS_ARDUINO \
    --entrypoint=/root/LI3DS_ARDUINO/upload.sh \
    -w="/root/LI3DS_ARDUINO" \
    --device=/dev/ttyACM0:/dev/ttyACM0 \
    172.20.250.99:5000/li3ds/rosnode_arduino
