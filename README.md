# kube-practice

### create the minikube cluster

Using three control plane nodes and three worker nodes.


```bash
$ minikube start --cni=cilium --container-runtime=containerd --cpus=2 --delete-on-failure=true --driver=kvm2 --kvm-network='default' --memory=4g --ha=true --kubernetes-version='v1.33.4'
```

### install the haproxy-ingress-controller helm chart

```bash
$ helm repo add haproxytech https://haproxytech.github.io/helm-charts
$ helm repo update haproxytech
```
