# Flask ML Serverless


# Overview

Python flask machine learning project with continuous integration in github actions,pytest, pylint and continuous deployment im azure pipelines.

[![Makefile CI](https://github.com/dorateq/flask-ml-serverless/actions/workflows/makefile.yml/badge.svg?branch=main)](https://github.com/dorateq/flask-ml-serverless/actions/workflows/makefile.yml)

## Project Plan


* A link to a Trello board for the project https://trello.com/b/yjgQo8xb/ci-cd
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/trello.png)

* A link to a spreadsheet that includes the original and final project plan>
* Original link https://docs.google.com/spreadsheets/d/1Bbvhw7yLDbKwJuximwFbkGi2EjyF1zCFsqFvuIYkY2k/copy
* Final link https://github.com/dorateq/flask-ml-serverless/blob/main/projecttracker.xlsx

## Instructions
  
* Architectural Diagram (Shows how key parts of the system work)>
# continuous integration ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/ci.png)
# continuous deployment ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/architecture.png)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

## Pre-requisites
- Azure account, basic knowledge of azure cli and console
- Github account, basic knowledge of azure devops, github and git
- Basic knowledge of   tool
- Basic knowledge of python, flask 

## Steps
- Log into Azure account and connect to azure cli 
    ```
    az version
    az help 
    ```
- Create and activate python virtual environment 
    ```
    python -m venv flaskly
    source flaskly/bin/activate
    cd flaskly
    ```
- Login to github fork this repo and clone repo to virtual environment `
    `` 
    git clone https://github.com/dorateq/flask-ml-serverless.git
    cd flask-ml-serverless
    ```
- Edit url in app and Makefile example "flask-ml"
- To build the app Run   commands  
    ```
      make install
      make lint
      make test
    ```
- To setup App service in azure account run command and Check azure console for app service 
    ```
      make azwebapp 
    ```

- Check prediction for flask ML and the REST URL. Does anything work?? 
    ``` 
    make predict-azure
    make   app-svc 
    ```
- Load test the app using Locust 
    ``` 
        make load
    ```
- Connect azure devops to github through service connection  
- Make changes in local new branch to project and push to github
- Go to github actions and run a workflow for CI pipeline run 
- Open A PR, review and merge to main branch
- Go to Azure devops and watch CD pipeline run 
- Test app url with curl to verify as before 
    ```
    make   predict-azure
    make app-service
    ```

* Project running on Azure App Service
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/appazure.png)

* Project cloned into Azure Cloud Shell
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/flask-azurecli.png)

* Passing tests that are displayed after running the `  all` command from the `Makefile`
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/make-all.png)

* Output of a test run
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/gh-actions.png)

* Output of Locust Load test test run
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/locust10.png)


* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/azurepipeline-run.png)

* Running Azure App Service from Azure Pipelines automatic deployment
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/azuredeployment.png)


* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:


```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/make-predict.png)


* Output of streamed log files from deployed application
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/app-svc.png)


## Enhancements

<TODO: A short description of how to improve the project in the future>
- Configure monitoring for the service 
- Create actionable alerts based on monitoring 
- Make project cloud-agnostic 
- Use Github pages for documentation and keep README lean

## Demo 

<TODO: Add link Screencast>
https://vimeo.com/743558808

