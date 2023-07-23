#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "install-kubeadmin.sh"

sudo apt-get update
sudo apt-get install --quiet --yes apt-transport-https ca-certificates curl gpg
##########! Ahmed Jemal Begin Update

#sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
#echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list 
sudo curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list


#########! Ahmed Jemal End Update

sudo apt-get update
sudo apt-get install --quiet --yes kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
