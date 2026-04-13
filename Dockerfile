FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start-dev", "--http-enabled=true", "--http-host=0.0.0.0", "--http-port=10000", "--hostname-strict=false"]