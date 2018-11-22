#ifndef EASYLOGGER_H
#define EASYLOGGER_H

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <ctime>

using namespace std;

class EasyLogger{
    public:
	EasyLogger(string);
	void log(string);
	string get_curr_time();

    private:
	string m_log_dir;
};


#endif



