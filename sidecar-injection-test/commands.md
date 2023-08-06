kubectl run mywebserver --image nginx \
    --dry-run=client -oyaml > nginx-pod.yaml

istioctl kube-inject --filename ./nginx-pod.yaml > transformed.yaml

docker inspect istio/proxyv2:1.18.2 | grep Entrypoint -A 4 -B 4

k exec web-frontend-669d8796d7-2gqqq -c istio-proxy -- pilot-agent istio-iptables --help