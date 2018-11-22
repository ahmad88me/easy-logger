CC = g++

easy_logger.o: 
	$(CC) -c easy_logger.cpp

main.o:
	$(CC) -c main.cpp
	
easy_logger: 
	$(CC) -o easy_logger easy_logger.o main.o

