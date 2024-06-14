default:
	@just --list

# install
install:
	poetry install

# lint:
lint:
	poetry run black --check .

# format
format:
	poetry run black .

# test
test:
	poetry run coverage run --branch --source=./src -m pytest --durations=10 --color=yes tests
	poetry run coverage report

#clean
clean:
	rm -rf `find . -name __pycache__`
	rm -f `find . -type f -name '*.py[co]'`
	rm -f `find . -type f -name '*~'`
	rm -f `find . -type f -name '.*~'`
	rm -rf .cache
	rm -rf .pytest_cache
	
