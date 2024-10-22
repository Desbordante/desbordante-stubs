
# Stubs for Desbordante

Main repository is available at https://github.com/Mstrutov/Desbordante

Stubs are generated by https://github.com/sizmailov/pybind11-stubgen

## Setup and Usage

This repository includes several helpful Makefile scripts for managing stubs and code formatting. Below are the available commands:

### 1. Install dependencies
To install all necessary dependencies and set up pre-commit hooks, run:
```bash
make init
```

### 2. Generate stubs
To generate the stubs for the `desbordante` library:
```bash
make stubs
```
This will run `pybind11-stubgen` to generate stubs, remove the old `desbordante-stubs` folder if it exists, and move the newly generated stubs to `desbordante-stubs`. The code will also be formatted after generation.

### 3. Run linters and formatters
To check the code with linters and formatters:
```bash
make lint
```
This command runs `ruff` to ensure the code is properly formatted and follows style guidelines.

### 4. Format the code
To automatically format the code:
```bash
make format
```
This command will run `ruff` and `black` to reformat the code in the `desbordante-stubs` folder.
