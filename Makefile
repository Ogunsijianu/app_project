# Makefile for GitHub Automation

# Variables
REPO_URL = https://github.com/Ogunsijianu/app_project.git
VENV_DIR = venv
SRC_DIR = src
TEST_DIR = tests

# Set up virtual environment and install dependencies
setup:
	python3 -m venv $(VENV_DIR)
	. $(VENV_DIR)/bin/activate && pip install -r requirements.txt

# Run tests
test: setup
	. $(VENV_DIR)/bin/activate && python -m unittest discover -s $(TEST_DIR) -p 'test_*.py'

# Run linting checks
lint: setup
	. $(VENV_DIR)/bin/activate && pylint $(SRC_DIR)

# Format code using Black
format: setup
	. $(VENV_DIR)/bin/activate && black $(SRC_DIR) $(TEST_DIR)

# Commit and push changes to GitHub
push:
	git add .
	git commit -m "Automated commit"
	git push origin main

# Clean up
clean:
	rm -rf $(VENV_DIR)
	find . -name "*.pyc" -exec rm -f {} \;

# Default target (no actual build here)
.PHONY: default
default: test lint format
