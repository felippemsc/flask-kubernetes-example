dev-env:
	pip install pipenv
	pipenv install --system

lock:
	pipenv lock

pre-commit:
	pre-commit install
	pre-commit run --all-files

lint:
	pylint --rcfile=pylintrc app

check:
	pytest --cov=app tests/
