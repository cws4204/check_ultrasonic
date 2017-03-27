#include <iostream>
#include <wiringPi.h>
#include "libSonar.h"
#include <fstream>
using namespace std;

int trigger = 1;
int echo = 5;

int main()
{
    if (wiringPiSetup() == -1)
        return -1;

    Sonar sonar;
    sonar.init(trigger, echo);

ofstream out_data("check_ultrasonic.log");
out_data << "WaterLevel,host=sumppump value=" << sonar.distance(30000)  << endl;
// 30000 is a timeout in microseconds

return 0;
}
