.PHONY: help install lint format test clean notebook docs-serve docs-build version changelog

SHELL := /bin/bash

help:
	@echo "Commands:"
	@echo "  install      : Install dependencies using Poetry."
	@echo "  lint         : Run linter and formatter checks."
	@echo "  format       : Auto-format the code."
	@echo "  test         : Run all tests."
	@echo "  notebook     : Launch Jupyter Lab."
	@echo "  docs-serve   : Serve the documentation locally."
	@echo "  docs-build   : Build the documentation site."
	@echo "  version      : Bump project version using commitizen."
	@echo "  changelog    : Update CHANGELOG.md from commits."

install:
	poetry install

lint:
	# Check formatting and linting with one tool
	poetry run ruff check .
	poetry run ruff format --check .

format:
	# Auto-format and auto-fix with one tool
	poetry run ruff check --fix .
	poetry run ruff format .
	@echo "Code formatted and linting issues fixed."

test:
	poetry run pytest

notebook:
	poetry run jupyter-lab

docs-serve:
	poetry run mkdocs serve

docs-build:
	poetry run mkdocs build

version:
	poetry run cz bump --yes

changelog:
	poetry run cz changelog