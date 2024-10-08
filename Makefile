install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml

lint:
	poetry run flake8 gendiff

selfcheck:
	poetry check

check: selfcheck test lint

build:
	poetry build

package-install:
	pip install dist/*.whl

package-reinstall:
	pip install --upgrade --force-reinstall dist/*.whl