setup:
	python3 -m venv .devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:


lint:
	hadolint --ignore=DL3013 Dockerfile
	pylint --disable=R,C,W1203,W1309 app.py

all: install lint test