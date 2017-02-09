# Docker container for Arduino development

This container provides an installation of the Arduino.cc application and a virtual X11 server.

It is designed for use in a CI environment, but can be used wherever the Arduino toolchain is needed.

# LI3DS

## Description

Mise en place d'une structure pour faire tourner en mode autonome un docker-compose avec ROSSerial + rosnode_Arduino en mode [dev].

En lancant 'docker-compose up',
on lance 2 nodes ROS + ROSSERIAL -> ARDUINO.

On peut ensuite se connecter au node 'arduino' et utiliser des outils de:
- Compilation: cmake + gcc + avr
- Déploiement: connection arduino pour uploader les binaires
- Exécution: exécution et connection de l'ARDUINO sur le réseau ROS actif.

## Usage

```bash
┏ ✓    atty@atty-desktop   ~/Prog/__IGN__/LI3DS/li3ds-Arduino-docker     dev    1.85   0.67G    23:01:00 
┗ docker-compose up

Starting ros_master
Starting rosnode_arduino
Attaching to ros_master, rosnode_arduino
```

```bash
┏ ✓    atty@atty-desktop   ~/Prog/__IGN__/LI3DS/li3ds-Arduino-docker     dev   1.86   0.64G    23:01:00 
┗ docker-compose run arduino bash

root@ff72365cfc15:~# source /ros_entrypoint.sh
root@ff72365cfc15:~# rostopic list
/arduino_trig
/arduino_trig_timestamp
/camlight_trig
/diagnostics
/rosout
/rosout_agg
root@ff72365cfc15:~# rostopic echo /arduino_trig_timestamp
seq: 19
stamp:
  secs: 1486677693
  nsecs: 574640056
frame_id: GPRMC,000018,A,4901.00,N,200.00,W,0.1,180,01012016,,,S
---
```
