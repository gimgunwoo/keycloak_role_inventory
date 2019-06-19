#!/bin/bash

if [ $# != 4 ]
then
	echo "Usage: ./import_roles.sh <ssh key> <username> <ip address or hostname> <awscli profile>"
	exit 2
fi

ssh -t -i $1 $2@$3 'sudo /root/role_export.sh'
scp -i $1 $2@$3:/home/$2/all_roles .
sed -i '1d' all_roles
python role_desc_arn.py $4
