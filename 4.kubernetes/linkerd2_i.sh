#!/bin/bash
###############################
# Step 1
#   - add dependency libs
###############################
sudo dnf install -y conntrack
sudo dnf install -y socat

###############################
# Step 2
#   - install step for cert
#   - ca.crt
#   - ca.key
#   - issuer.crt
#   - issuer.key
###############################
wget -O step.tar.gz https://github.com/smallstep/cli/releases/download/v0.15.16/step_linux_0.15.16_amd64.tar.gz
tar -xf step.tar.gz
sudo cp step_0.15.16/bin/step /usr/bin

step certificate create root.linkerd.cluster.local ca.crt ca.key \
--profile root-ca --no-password --insecure

step certificate create identity.linkerd.cluster.local issuer.crt issuer.key \
--profile intermediate-ca --not-after 8760h --no-password --insecure \
--ca ca.crt --ca-key ca.key

###############################
# Step 3
#   - install linkerd2 via helm
###############################
helm repo add linkerd https://helm.linkerd.io/stable

helm install linkerd2  --set-file identityTrustAnchorsPEM=ca.crt   --set-file identity.issuer.tls.crtPEM=issuer.crt   --set-file identity.issuer.tls.keyPEM=issuer.key   --set identity.issuer.crtExpiry=$(date -d '+8760 hour' +"%Y-%m-%dT%H:%M:%SZ") linkerd2/linkerd2 --version 2.10.2

###############################
# Step 4
#   - install linkerd-viz
#   - check linkerd2 and linkerd-viz
#   - expose dashboard for everyone
###############################
helm install linkerd2/linkerd-viz

wget https://github.com/linkerd/linkerd2/releases/download/stable-2.10.2/linkerd2-cli-stable-2.10.2-linux-amd64
./linkerd2-cli-stable-2.10.2-linux-amd64 check

kubectl create -f linkerd-viz_nginx_ingress.yaml

###############################
# Step 5
#   - for client
#   - vi /etc/hosts
#   - add linkerd-viz host 'xxx.xxx.xxx.xxx		dashboard.example.com'
#   - open browser with 'dashboard.example.com'
###############################
