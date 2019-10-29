dev-env:
	pip install pipenv
	pipenv install --system

lock:
	pipenv lock

lint:
	pylint --rcfile=pylintrc app