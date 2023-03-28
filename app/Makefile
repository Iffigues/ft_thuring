# Makefile for myproject
# Set the compiler and compiler flags
GHC = ghc
GHCFLAGS = -O2 -package aeson
# Define the name of the executable
TARGET = myprogram
# Use a wildcard to find all .hs files in the directory
SOURCES = $(wildcard *.hs)
# Convert the .hs filenames to .o filenames
OBJECTS = $(SOURCES:.hs=.o)
all: $(TARGET)
# Define how to compile the program
$(TARGET): $(OBJECTS)
	$(GHC) $(GHCFLAGS) -o $(TARGET) $(OBJECTS)

# Define a rule to compile .hs files into .o files
%.o: %.hs
	$(GHC) $(GHCFLAGS) -c $<

# Define a "clean" target to remove generated files
clean:
	rm -f $(TARGET) *.o *.hi

# Define a "run" target to run the program
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
