CXX = 	g++

CXXFLAGS =	-O2 -g -Wall 

OBJS =	PA4.o bigint.o 

LIBS =

TARGET =	PA4

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)


bigint.o: bigint.h bigint.cpp
		$(CXX) $(CXXFLAGS) -c bigint.cpp
		

PA4.o: PA4.cpp bigint.h
		$(CXX) $(CXXFLAGS) -c PA4.cpp -o PA4.o
		
clean:
	rm -f $(OBJS) $(TARGET)