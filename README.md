[![Build Status](https://travis-ci.org/felippemsc/flask-kubernetes-example.svg?branch=master)](https://travis-ci.org/felippemsc/flask-kubernetes-example)
[![codecov](https://codecov.io/gh/felippemsc/flask-kubernetes-example/branch/master/graph/badge.svg)](https://codecov.io/gh/felippemsc/flask-kubernetes-example)

# flask-kubernetes-example:

## Developing:

Creating virtualenv and activating the virtualenv:

```
$ virtualenv -p python3.7 ~/envs/flask-k8s
$ source ~/envs/flask-k8s/bin/activate
```

Installing dependencies:

```
$ make dev-env
```

Updating Pipfile.lock with new libs:

```
$ make lock
```

Updating pre-commit hooks:

```
$ make pre-commit
```

## Using minikube:

```
$ minikube start -p flask-example --cpus 2 --memory 1024
$ kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080
$ kubectl expose deployment hello-minikube --type=NodePort
$ kubectl get pod
$ minikube service hello-minikube --url -p flask-example
$ curl $(minikube service hello-minikube --url -p flask-example)
$ minikube dashboard -p flask-example
$ minikube stop -p flask-example
$ minikube delete -p flask-example
```

#### TODO:
[ ] Kubernetes

[ ] EKS (Terraform)
