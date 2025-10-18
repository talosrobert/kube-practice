.PHONY: deploy deploy-ingress

deploy-ingress:
	helm install haproxy-ingress-intern --namespace haproxy-ingress -f ./helm/ingress.yaml haproxytech/kubernetes-ingress

deploy: deploy-ingress
