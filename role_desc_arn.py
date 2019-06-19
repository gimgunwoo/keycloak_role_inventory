import json
import re
import sys

def credentials(profile):
    with open('all_roles') as roles:
        data = json.load(roles)
        for role in data:
            sys.stdout = open('/home/brian/.aws/credentials', 'a+')
            print('[' + role['description'].replace(" ", "_") + ']')
            print('role_arn = ' + role['name'].split(',')[0])
            print('source_profile = ' + profile)

credentials(sys.argv[1])
