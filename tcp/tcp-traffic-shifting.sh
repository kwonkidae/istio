#!/bin/bash
kubectl create namespace istio-io-tcp-traffic-shifting
kubectl label namespace istio-io-tcp-traffic-shifting istio-injection=enabled
