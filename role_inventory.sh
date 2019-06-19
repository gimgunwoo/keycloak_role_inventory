#!/bin/bash

export KEYCLOAK_HOME=/opt/jboss/keycloak
export PATH=$PATH:$KEYCLOAK_HOME/bin
kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user keycloak-admin --password lithographer51389638-networker
kcadm.sh get-roles -r master --cclientid urn:amazon:webservices
