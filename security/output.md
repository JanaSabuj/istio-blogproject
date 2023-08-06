# peer authentication
sabuj@LAPTOP-3JQ230EB:~$ k exec deploy/sleep -it -- sh
~ $ curl web-frontend.frontend-prod
curl: (56) Recv failure: Connection reset by peer

# authz-policy
~ $ curl customers.backend-prod
[{"name":"Jewel Schaefer"},{"name":"Raleigh Larson"},{"name":"Eloise Senger"},{"name":"Moshe Zieme"},{"name":"Filiberto Lubowitz"},{"name":"Ms.Kadin Kling"},{"name":"Jennyfer Bergstrom"},{"name":"Candelario Rutherford"},{"name":"Kenyatta Flatley"},{"name":"Gianni Pouros"}]
~ $ curl customers.backend-prod
RBAC: access denied