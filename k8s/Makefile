PROJECT_ID=
SERVICE=
NAMESPACE=

up:
	cat php-service.yaml | PROJECT_ID=${PROJECT_ID} SERVICE=${SERVICE} envsubst | kubectl apply -n ${NAMESPACE} -f -
job:
	cat job.yaml | PROJECT_ID=${PROJECT_ID} SERVICE=${SERVICE} envsubst | kubectl apply -n ${NAMESPACE} -f -
ingress:
	kubectl apply -f ingress.yaml -n ${NAMESPACE}
echo:
	@cat laravel-echo-server.yaml | PROJECT_ID=${PROJECT_ID} envsubst | kubectl apply -n kc -f -
	@cat laravel-echo-server.yaml | PROJECT_ID=${PROJECT_ID} envsubst | kubectl apply -n kc-staging -f -
