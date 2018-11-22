CC = g++

CFLAGS= -std=c++11

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	LIBCMAKETARGET := liblinux
	DETECTEDOS := Linux
endif

ifeq  ($(UNAME_S),Darwin)
	DETECTEDOS := MacOS
	LIBCMAKETARGET := libmac
endif


a.out: easy_logger.o main.o 
	$(CC) $(CFLAGS) -o a.out easy_logger.o main.o 


easy_logger.o: 
	$(CC) $(CFLAGS) -c easy_logger.cpp 


main.o:
	$(CC) $(CFLAGS) -c main.cpp


.PHONY: clean install lib libmac liblinux example

example:
	$(CC) $(CFLAGS) -o example.out easy_logger.cpp example.cpp
	./example.out

lib:
	echo  "Detected OS: " $(DETECTEDOS)
	$(MAKE) $(LIBCMAKETARGET)

libmac:
	$(CC) $(CFLAGS)  -dynamiclib -flat_namespace  easy_logger.cpp -o libeasylogger.so.1.0

liblinux:
	$(CC) $(CFLAGS) -fPIC -shared easy_logger.cpp -o libeasylogger.so.1.0

install:
	mkdir -p  /usr/local/include/easy_logger
	cp easy_logger.h /usr/local/include/easy_logger/
	$(MAKE) lib
	mv libeasylogger.so.1.0 /usr/local/lib/
	ln -fs /usr/local/lib/libeasylogger.so.1.0 /usr/local/lib/libeasylogger.so
	echo -e "easy_logger is installed"	
	$(MAKE) clean

clean:
	$(RM) *.o
	$(RM) a.out
	$(RM) *.log
