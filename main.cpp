
#include <iostream>
#include "easy_logger.h"

using namespace std;

int main(){
	EasyLogger logger("test.log");
	logger.log("testing");
	cout << "Easy Logger\n";
	return 0;
}


