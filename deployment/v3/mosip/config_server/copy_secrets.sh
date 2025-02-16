#!/bin/sh
# Copy secrets from other namespaces
# DST_NS: Destination namespace 
COPY_UTIL=../../utils/copy_cm_func.sh
DST_NS=config-server
$COPY_UTIL secret db-common-secrets postgres $DST_NS 
$COPY_UTIL secret keycloak keycloak $DST_NS 
$COPY_UTIL secret keycloak-client-secrets keycloak $DST_NS
$COPY_UTIL secret activemq-activemq-artemis activemq $DST_NS 
$COPY_UTIL secret softhsm keymanager $DST_NS softhsm-kernel
$COPY_UTIL secret softhsm ida $DST_NS softhsm-ida
$COPY_UTIL secret s3 s3 $DST_NS
$COPY_UTIL secret email-gateway msg-gateways $DST_NS
$COPY_UTIL secret prereg-captcha prereg $DST_NS
