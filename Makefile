CC = g++


a.out: easy_logger.o main.o 
	$(CC) -o a.out easy_logger.o main.o 


easy_logger.o: 
	$(CC) -c easy_logger.cpp 


main.o:
	$(CC) -c main.cpp
	

clean:
	$(RM) *.o
	$(RM) a.out
	$(RM) *.log
