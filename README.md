# kube-practice

### create the minikube cluster

Using three control plane nodes and three worker nodes.


```bash
$ minikube start --cni=cilium --container-runtime=containerd --cpus=2 --delete-on-failure=true --driver=kvm2 --memory=4g -n=3
$ for i in $(seq 0 2);
$ do
$     minikube node add --delete-on-failure --worker 
$ done
```

### add haproxy ingress controller

```bash
$ helm repo add haproxytech https://haproxytech.github.io/helm-charts
$ helm repo update haproxytech
$ helm install haproxy-kubernetes-ingress haproxytech/kubernetes-ingress \
$   --create-namespace \
$   --namespace ingress \
$   --set controller.ingressClass=internal \
$   --set controller.kind=DaemonSet \
$   --set controller.daemonset.useHostPort=true
```
