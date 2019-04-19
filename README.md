# CKabalan's Development Environment Ansible Playbook

## How to Install

Download Playbook:

```bash
git clone https://github.com/ckabalan/dev-environment.git
```

Run the Ansible Setup:

```bash
./setup.sh
```

Run the Playbook:

```bash
ansible-playbook --verbose -K site.yml
```

Finish Samba Setup:

```bash
sudo smbpasswd -a $USER
sudo systemctl restart smbd
```

## Other Tips

### Discard Local Changes and Sync Repository From Origin

```bash
git fetch && git reset origin/master --hard
```

### Stop Holding Up Boot With Host-Only Adapter

Ubuntu:

- Edit `/etc/netplan/50-cloud-init.yaml`
- Add `optional: true` under the Host-Only Adapter

### Set up Samba

