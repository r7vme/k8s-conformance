# Kubernetes Conformance Test Runner

Prerequisites:
```
export KUBECONFIG=$HOME/.kube/config
```

Running the whole conformance test suite:
```
docker run --name k8s-conformance --net=host -v $KUBECONFIG:/kubeconfig rsokolkov/k8s-conformance
```

Running specific test:
```
docker run --name k8s-conformance --net=host -v $KUBECONFIG:/kubeconfig -e FOCUS="DNS for services" rsokolkov/k8s-conformance
```

Running specific version of tests suite:
```
# WARN: This will download 1GB+ of kubernetes artifacts
docker run --name k8s-conformance --net=host -v $KUBECONFIG:/kubeconfig -e VERSION="v1.5.3" rsokolkov/k8s-conformance
```

Check logs:
```
docker logs k8s-conformance
```

# TODO

- Install kubetest in build phase `go get -u k8s.io/test-infra/kubetest`
- Add proper versioning. Bake specific version kubernetes and kubetest into image and add braches (e.g. 1.5.X, 1.6.X)
