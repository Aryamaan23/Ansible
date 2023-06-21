 vi .ssh/authorized_keys


ansible all -m ping --key-file "/root/.ssh/id_rsa" -u ec2-user

ansible-playbook example.yml -i inventory


ssh 172.31.90.154 -l ec2-user

eval $(ssh-agent)


cat ~/.gitconfig


ansible all -m ping --key-file "/root/.ssh/id_rsa" -i inventory -u ec2-user

After making ansible.cfg
ansible all --list-hosts -u ec2-user

ansible all -m ping -u ec2-user

ansible all -m gather_facts -u ec2-user


ansible all -m dnf -a "update_cache=true"


ansible all -m dnf -a "name=tmux" --become --ask-become-pass


ansible-playbook vim.yml

vim.yml
---
- hosts: all
  become: true
  tasks:
    - name: install vim package
      dnf:
        name: vim
        state: present


ansible all -m gather_facts --limit 172.31.90.154

ssh-keygen -t rsa -b 4096

ssh-keygen -y -f /home/ec2-user/.ssh/id_rsa

ssh 172.31.24.36 -l ubuntu

ansible-playbook --list-tags site.yml

 ansible-playbook --tags Ubuntu site.yml -u ubuntu

ansible-playbook --tags "Ubuntu,mariadb,samba" site.yml -u ubuntu
