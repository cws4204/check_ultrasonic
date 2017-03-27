# check_ultrasonic

check_ultrasonic binary, Takes sensor reading and output to check_ultrasonic.log
(to compile)  g++ check_ultrasonic.cpp -o check_ultrasonic -lwiringPi -lcurl libSonar.cpp

check_ultrasonic_wrapper.sh reads the check_ultrasonic.log file, Sends it to influxdb and then truncates the log, looping.
