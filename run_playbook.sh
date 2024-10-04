#!/bin/bash

ansible-playbook -i inventory.ini playbook.yaml --private-key ~/.ssh/medal_key
