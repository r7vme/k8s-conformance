# Kubernetes Conformance Test Runner

Running the whole conformance test suite:
```
docker run --rm --net=host -e API_SERVER=http://localhost:8080/ mirantis/k8s-conformance
```

Running specific test:
```
docker run --rm --net=host -e API_SERVER=http://localhost:8080/ -e FOCUS="DNS for services" mirantis/k8s-conformance
```
