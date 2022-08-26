install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
test:
	python -m pytest -vv test_hello.py

lint:
	python -m pylint --disable=R,C hello.py

azwebapp:
	az webapp up -n flask-ml-jon

predict-azure: 
	make_predict_azure_app.sh

predict:
	make_prediction.sh
	
app-service:
	curl https://flask-ml-jon.azurewebsites.net

all: install lint test

