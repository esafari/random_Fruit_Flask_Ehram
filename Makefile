install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C app.py

test:
	pytest -vv --cov=app.py test_app.py

format:
	

all: install lint test format
