dev-env:
	pip install pipenv
	pipenv install --dev

lock:
	pipenv lock

pre-commit:
	pre-commit install
	pre-commit run --all-files

lint:
	pylint --rcfile=pylintrc app

check:
	pytest --cov=app tests/

push:
	docker build . -t felippemsc/k8s-wsgi-example:test
	docker push felippemsc/k8s-wsgi-example:test
