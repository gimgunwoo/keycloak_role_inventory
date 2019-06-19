#!/bin/bash

SCRIPTDIR=$(find / -type f -iname kcadm.sh | sed 's/kcadm\.sh//g')
KEYCLOAKDOCKER=$(docker ps | grep SAML | awk '{ print $NF }')

docker exec -it $KEYCLOAKDOCKER bash /$(echo $SCRIPTDIR | cut -d'/' -f9-12)/role_inventory.sh > /home/ec2-user/all_roles

chown ec2-user: /home/ec2-user/all_roles
