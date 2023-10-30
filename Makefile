# Makefile for Build Automation

# Targets
build:  # Compile and test the application
    python setup.py build

test:  # Run unit tests
    python -m unittest discover

package:  # Create a deployable package
    python setup.py sdist

clean:  # Clean build artifacts
    python setup.py clean --all

# Default target
all: build test package

.PHONY: build test package clean
