install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C app.py

test:
	python3 -m pytest -vv --cov=app.py test_app.py

format:
	black *.py

all: install lint test format