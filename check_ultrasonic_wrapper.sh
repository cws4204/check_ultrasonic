#!/bin/bash
while [ 1 -eq 1 ]; do sudo /home/pi/ultrasonic/HC-SR04-Raspberry-Pi-C-/check_ultrasonic;cat /home/pi/ultrasonic/HC-SR04-Raspberry-Pi-C-/check_ultrasonic.log |curl -i -XPOST 'http://localhost:8086/write?db=ebike' --data-binary @-;sleep 0.7;truncate -s 0  /home/pi/ultrasonic/HC-SR04-Raspberry-Pi-C-/check_ultrasonic.log;done
