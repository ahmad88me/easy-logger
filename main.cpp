
#include <iostream>
#include "easy_logger.h"

using namespace std;

int main(){
	EasyLogger logger("test.log");
	logger.log("testing");
	EasyLogger *logger_ptr;
	logger_ptr = new EasyLogger("test.log");
	logger_ptr->log("ptr testing");
	cout << "Easy Logger\n";
	return 0;
}


