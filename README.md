[![CircleCI](https://circleci.com/gh/ksleeq21/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/ksleeq21/project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

## File explanation

### Source code

1. app.py: Provide REST API to run ML model with parameters and return a prediction

### Scripts

1. run_docker.sh: Create a docker image and run a docker image
2. upload_docker.sh: Upload a docker image to ksleeq21's Docker Hub
3. run_kubernetes.sh: Run a Docker Hub container with kubernetes
4. make_prediction.sh: Run a POST REST API to get a prediction

### Dockerfile

1. Dockerfile: A text document that contains commands to assemple an image

### Set up files

1. requirements.txt: A text document that contains required Python libraries and versions to run a program
2. Makefile: A text document that directs Make on how to setup, install and lint a program

### Circleci file

1. config.yml: CircleCI configuration file

### output_txt_files

1. docker_out.txt: Terminal output of execution of docker and make_prediction.sh script
2. kubernetes_out.txt: Terminal output of execution of run_kubernetes.sh script and make_prediction.sh script

