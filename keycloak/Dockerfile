FROM quay.io/keycloak/keycloak:16.1.0

ARG ADMIN_USERNAME
ARG ADMIN_PASSWORD

RUN /opt/jboss/keycloak/bin/add-user-keycloak.sh -u $ADMIN_USERNAME -p $ADMIN_PASSWORD