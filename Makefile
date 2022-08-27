install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		pip install locust
	
test:
	python -m pytest -vv test_hello.py

lint:
	python -m pylint --disable=R,C hello.py

azwebapp:
	az webapp up -n flask-ml-jon

predict-azure: 
	sh make_predict_azure_app.sh

predict:
	sh make_prediction.sh
	
app-svc:
	curl https://flask-ml-jon.azurewebsites.net 
	echo
load:
	python -m locust --web-port 9000

all: install lint test

