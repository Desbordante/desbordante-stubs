.PHONY: init lint format stubs

## Install dependencies
init:
	poetry install
	poetry run pre-commit install

## Run all formatters and linters in project
lint:
	poetry run ruff check desbordante-stubs \
	& poetry run ruff format --check desbordante-stubs

## Reformat code
format:
	poetry run ruff format desbordante-stubs & poetry run ruff check --fix

## Generate stubs
stubs:
	poetry run pybind11-stubgen desbordante
	@if [ -d "desbordante-stubs" ]; then rm -rf desbordante-stubs; fi
	@if [ -d "stubs/desbordante" ]; then mv stubs/desbordante desbordante-stubs; fi
	rm -rf stubs
	make format


.DEFAULT_GOAL := help
# See <https://gist.github.com/klmr/575726c7e05d8780505a> for explanation.
help:
	@echo "$$(tput setaf 2)Available rules:$$(tput sgr0)";sed -ne"/^## /{h;s/.*//;:d" -e"H;n;s/^## /---/;td" -e"s/:.*//;G;s/\\n## /===/;s/\\n//g;p;}" ${MAKEFILE_LIST}|awk -F === -v n=$$(tput cols) -v i=4 -v a="$$(tput setaf 6)" -v z="$$(tput sgr0)" '{printf"- %s%s%s\n",a,$$1,z;m=split($$2,w,"---");l=n-i;for(j=1;j<=m;j++){l-=length(w[j])+1;if(l<= 0){l=n-i-length(w[j])-1;}printf"%*s%s\n",-i," ",w[j];}}'
