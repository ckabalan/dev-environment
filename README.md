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

Ubuntu:

```bash
sudo apt install samba
sudo vi /etc/samba/smb.conf
```

Add this content:

```
[ckabalan]
    comment = Home Directory
    path = /home/ckabalan
    read only = no
    browsable = yes
```

Restart and add a password:

```bash
smbpasswd -a ckabalan
systemctl restart smbd
```