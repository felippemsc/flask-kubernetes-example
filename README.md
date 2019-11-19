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
FAZER O DEPLOY PELOS COMANDOS E VERIFICAR RESULTADO

[ ] Kubernetes Intro
cmd: - kubectl apply -f k8s/wsgi.yaml
Try to use Dockerfile direct at k8s file

[ ] Semversioner (try rc)

[ ] CD to Dockerhub
https://docs.travis-ci.com/user/docker/#pushing-a-docker-image-to-a-registry

[ ] Kubernetes Blue/Green deployment image version substitution

[ ] EKS (Terraform)

#### References:

* https://kubernetes.io/blog/2018/04/30/zero-downtime-deployment-kubernetes-jenkins/
* https://github.com/biancarosa/k8s-flask-app/blob/master/kubernetes/deployment.yaml
* https://kubernetes.io/docs/concepts/services-networking/ingress/
* https://hub.docker.com/r/felippemsc/k8s-wsgi-example/tags
