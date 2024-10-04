# Ansible Playbooks For Medal Testbench

This repo contains a lightweight framework for setting
up a test cluster with the Kubernetes platform. 

## Setting up the cluster for this demo

Assumptions:
- All nodes are currently online and accessible through SSH with pubkey auth
  - The remote user is `cc`
- The private key is currently stored on the first/main/master node which
  will be used to connect to the other nodes
- All nodes are running Ubuntu 20.04 and have some form of python installed. 
  This playbook has not been tested for use with other Linux distros, so no
  guarantees that it'll work outside of Ubuntu 20.04

Feel free to change any part of this playbook to fit your needs.

First install python if not already installed:
```
sudo apt install python
```

Then use pip in any form to install ansible:
```
python3 -m pip install --user ansible
```

To run the playbook, create a file called `inventory.ini` and define nodes according
to [this page](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#inventory-basics-formats-hosts-and-groups). An example inventory file is also provided in the same directory as this README file.

Now you can run the playbook:
```
ansible-playbook -i [INVENTORY FILE] playbook.yaml --private-key [PATH TO PRIVATE SSH KEY]
```

# Testing out bugs

In the `bugs/` directory, there are several playbooks designed to cause some sort of bug in
the Kubernetes configuration. Each playbook is meant to be run on a clean cluster, just
like the initial playbook described above. 
