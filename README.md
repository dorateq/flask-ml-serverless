# Flask ML Serverless
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/gh-actions.png)

# Overview

Python flask machine learning project with continuous integration in github actions,pytest, pylint and continuous deployment im azure pipelines.

## Project Plan


* A link to a Trello board for the project https://trello.com/b/yjgQo8xb/ci-cd
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/trello.png)

* A link to a spreadsheet that includes the original and final project plan>
* Original link https://docs.google.com/spreadsheets/d/15syXTrJy0DK5rXZF3aPtGzn3ckKxnIzjjDlv0vf2j0M/edit?usp=sharing
* Final link 

## Instructions
  
* Architectural Diagram (Shows how key parts of the system work)>
# continuous integration ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/ci.png)
# continuous deployment ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/architecture.png)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:


Log into Azure account and connect to azure cli ``` ```
Create python virtual environment ``` ```
Login to github and clone repo to azure cli ``` ```
Edit url in app and Makefile
Run make commands  ``` ```
Check azure console
Test app url with curl
Connect azure devops to github through service connection 

Run app service ``` ```

* Project running on Azure App Service
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/appazure.png)

* Project cloned into Azure Cloud Shell
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/azure-cli.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/make-all.png)

* Output of a test run
# ![alt text](https://github.com/dorateq/flask-ml-serverless/blob/main/make-all.png)

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

## Demo 

<TODO: Add link Screencast on YouTube>


