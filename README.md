# check_ultrasonic

Pre Req:
git clone https://github.com/omaflak/HC-SR04-Raspberry-Pi-C-.git

git clone git://git.drogon.net/wiringPi
cd wiringPi
git pull origin
./build


check_ultrasonic binary, Takes sensor reading and output to check_ultrasonic.log
(to compile)  g++ check_ultrasonic.cpp -o check_ultrasonic -lwiringPi -lcurl libSonar.cpp

check_ultrasonic_wrapper.sh reads the check_ultrasonic.log file, Sends it to influxdb and then truncates the log, looping.
