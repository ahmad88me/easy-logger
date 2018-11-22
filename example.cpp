
#include <iostream>
#include <easy_logger/easy_logger.h>

using namespace std;

int main(){
	EasyLogger logger("example.log");
	logger.log("testing example");
	logger.log("This is a log message");
	cout << "This is an example\n";
	return 0;
}


