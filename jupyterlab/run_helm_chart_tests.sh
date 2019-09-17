#!/bin/bash
NODE_IP=$(kubectl get nodes -o jsonpath='{ $.items[*].status.addresses[?(@.type=="InternalIP")].address }' | cut -d ' ' -f 1)
apt-get install -y curl
curl $NODE_IP:30889