CC = g++
ARCH=sm_86

stream : stream.cu Makefile
	nvcc -std=c++11 -ccbin=$(CC) stream.cu -arch=$(ARCH) -O3 -o stream

.PHONY: clean
clean :
	rm -f stream
