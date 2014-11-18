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

