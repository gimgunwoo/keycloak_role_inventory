# AWS role inventory from KeyCloak

## Requirements
awscli

## Installation
- role_export.sh in /root directory of the ec2 instance that Keycloak is running
- role_inventory.sh in the Keycloak/bin directory. Use the command below to find it:
```
find / -type f -iname kcadm.sh | sed 's/kcadm\.sh//g'
```
- import_roles.sh and role_desc_arn.py in your local machine

** Warning **
role_desc_arn.py script will append all the arn in your .aws/credentials. It will be better to create a backup file before running it so that you can avoid redundant roles in credentials file.

## Usage
Run import_roles.sh in your local machine:
```
./import_roles.sh <ssh key> <username> <ip address or hostname> <awscli profile>
```
This will append all the profiles for the roles in .aws/credentials.
