CXX = g++
CXXFLAGS = -std=c++2a -Wall -I h -I /usr/local/include/gtest/ -c
LXXFLAGS = -std=c++2a -Ih -pthread
OBJECTS = ./obj/aphw1.o ./obj/main.o ./obj/aphw1_unittest.o
GTEST = /usr/local/lib/libgtest.a
TARGET = main


$(TARGET): $(OBJECTS)
	$(CXX) $(LXXFLAGS) -o $(TARGET) $(OBJECTS) $(GTEST)
./obj/aphw1.o: ./cpp/aphw1.cpp
	$(CXX) $(CXXFLAGS) ./cpp/aphw1.cpp -o ./obj/aphw1.o
./obj/aphw1_unittest.o: ./cpp/aphw1_unittest.cpp
	$(CXX) $(CXXFLAGS) ./cpp/aphw1_unittest.cpp -o ./obj/aphw1_unittest.o
./obj/main.o: ./cpp/main.cpp
	$(CXX) $(CXXFLAGS) ./cpp/main.cpp -o ./obj/main.o
clean:
	rm -fv $(TARGET) $(OBJECTS)
