all:
	docker build -t mirantis/k8s-conformance .

push:
	docker push mirantis/k8s-conformance
