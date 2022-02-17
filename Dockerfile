FROM quay.io/keycloak/keycloak:16.1.0

ARG ADMIN_USERNAME
ARG ADMIN_PASSWORD

RUN /opt/jboss/keycloak/bin/add-user-keycloak.sh -u $ADMIN_USERNAME -p $ADMIN_PASSWORD

COPY keycloak/keycloak-bcrypt-1.5.0.jar /opt/jboss/keycloak/standalone/deployments/keycloak-bcrypt-1.5.0.jar
COPY keycloak/themes/inbolso /opt/jboss/keycloak/themes/inbolso

ENV PROXY_ADDRESS_FORWARDING="true"
ENV DB_VENDOR="postgres"
ENV DB_ADDR="${PG_HOST}"
ENV DB_PORT="${PG_PORT}"
ENV DB_SCHEMA="${PG_SCHEMA}"
ENV DB_DATABASE="${PG_DB}"
ENV DB_USER="${PG_USERNAME}"
ENV DB_PASSWORD="${PG_PASSWORD}"
ENV JAVA_OPTS="-server -Xms1024m -Xmx1024m"
ENV JAVA_OPTS_APPEND="-Djboss.as.management.blocking.timeout=12200"
#ENV KEYCLOAK_FRONTEND_URL="${FRONTEND_URL}"