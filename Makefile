CC = gcc
CFLAGS = -Wall -Iinclude -O2
LDFLAGS = -lavformat -lavcodec -lavutil -lswscale -lpthread

SRC = $(wildcard src/**/*.c src/*.c)
OBJ = $(SRC:.c=.o)

TARGET = build/rtmp_server

$(TARGET): $(OBJ)
	mkdir -p build
	$(CC) $(OBJ) -o $(TARGET) $(LDFLAGS)

clean:
	rm -rf $(OBJ) $(TARGET)
