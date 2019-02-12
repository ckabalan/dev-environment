# CKabalan's Development Environment Ansible Playbook

## How to Install

Install Ansible via:

```bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible
```

Download Playbook:

```bash
git clone https://github.com/ckabalan/dev-environment.git
```

Run Playbook:

```bash
ansible-playbook --verbose -K site.yml
```