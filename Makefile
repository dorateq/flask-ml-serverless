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
	sh make_predict_azure_app.sh

predict:
	sh make_prediction.sh
	
app-svc:
	curl https://flask-ml-jon.azurewebsites.net 
	echo

all: install lint test

