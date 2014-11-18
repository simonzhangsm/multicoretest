export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
gcc -Wl,--add-stdcall-alias -I"%JAVA_HOME%\include" -I"%JAVA_HOME%\include\win32" -shared -o hello.dll HelloJNI.c
OBJS = sched_setaffinity.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)
LDFLAGS=
RM = rm -rf

SOURCES=sched_setaffinity
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=test

ALL: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

CLEAN:
	$(RM) *.o $(EXECUTABLE)

TAR:

