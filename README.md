# easy-logger

[![Build Status](https://semaphoreci.com/api/v1/ahmad88me/easy-logger/branches/master/badge.svg)](https://semaphoreci.com/ahmad88me/easy-logger)

An easy logger in c++

# Install
```make install```

# Example
```
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

```


# Run example
```make example```



