CXXFLAGS = -Wall -ggdb -pthread -D__DEBUG__
CXXFLAGS = -Wall -ggdb -pthread #-D__DEBUG__

LDFLAGS = -pthread -lm

TARGETS = main

all:	$(TARGETS)

main:	main.o sos.o utils.o thread.o
		g++ -o $@ $^ $(LDFLAGS)

sos.o:	sos.h dbc.h utils.h

thread.o: thread.h

utils.o:	utils.h dbc.h

main.o:	sos.h dbc.h utils.h

clean:
		rm -f *.o *~

cleanall:	clean
		rm -f $(TARGETS)
