kubectl exec deploy/sleep -- curl -s customers.backend-prod

kubectl exec deploy/sleep -- curl -s web-frontend.frontend-prod | head -n4

