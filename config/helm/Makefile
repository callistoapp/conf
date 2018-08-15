.PHONY: default
default: all ;

install_auth:
	helm install --name auth --namespace callisto callisto-auth

install_back:
	helm install --name back --namespace callisto callisto-back

install_acls:
	helm install --name acls --namespace callisto callisto-acls

install_traefik:
	helm install --name traefik --namespace kube-system --values traefik/values.yaml stable/traefik

install_postgres:
	helm install --name postgresql -f postgres/values.yaml --namespace callisto stable/postgresql

install_mysql:
	helm install --name mysql -f mysql/values.yaml stable/mysql --namespace=callisto

clean_auth:
	helm del --purge auth || echo "auth cleaned"

clean_back:
	helm del --purge back || echo "back cleaned"

clean_acls:
	helm del --purge acls || echo "acls cleaned"

clean_traefik:
	helm del --purge traefik || echo "traefik cleaned"

clean_postgres:
	helm del --purge postgresql || echo "postgresql cleaned"

clean_mysql:
	helm del --purge mysql || echo "mysql cleaned"

restart_auth:	clean_auth install_auth

restart_acls:	clean_acls install_acls

restart_back:	clean_back install_back

restart_postgres:	clean_postgres install_postgres

restart_traefik: clean_traefik install_traefik

clean: clean_auth clean_back clean_acls clean_traefik clean_postgres clean_mysql

install: install_mysql install_postgres install_acls install_auth install_back install_traefik

all: clean install
