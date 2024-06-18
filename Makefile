install:
	pip install --upgrade pip &&\
                rm -rf venv &\
               python3 -m venv venv &\
               source venv/bin/activate &\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C app.py

test:
	pytest -vv --cov=app.py test_app.py

format:
	black *.py

all: install lint test format
