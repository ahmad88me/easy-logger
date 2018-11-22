
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <ctime>

#include "easy_logger.h"

EasyLogger::EasyLogger(string log_dir){
	m_log_dir = log_dir;
}

void EasyLogger::log(string msg){
    ofstream myfile;
    myfile.open(m_log_dir, ios::app);
    myfile<<this->get_curr_time()<<"\t"<<msg<<endl;
    myfile.close();
}

string EasyLogger::get_curr_time(){
    time_t t = std::time(0);
    tm* now = std::localtime(&t);
    return to_string(now->tm_year + 1900) + "-" + to_string(now->tm_mon + 1) + "-" +
        to_string(now->tm_mday)+ "  " + to_string(now->tm_hour)+":"+to_string(now->tm_min)+":"+to_string(now->tm_sec);
}
