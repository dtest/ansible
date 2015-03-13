# Role to install MySQL Server

Currently tested on Ubuntu 12.04 using MySQL Community Ubuntu repository.

This will also support configuring replication.

Tags include: always, setup, replication

# How to run

Install and setup
```
ansible-playbook -i ansible/inv ansible/playbooks/mysql.yml -e "targets=master" --tags=always,setup
```


# Tasks to complete:

### General
 - Support upstart and systemd
 - Support galera
 - Support percona server repository
 - Support mariadb
 - Test CentOS

### Securing
 - Secure install
 - PasswordVault (for root@localhost and root@127.0.0.1)
 - this doesn't drop 'test%' entries from mysql.db

### Replication
 - Create replication user on all servers
 - Grab lock on master and grab master status
 - Ensure replication is stopped on slaves
 - try to get MASTER STATUS
 - Need to fix configuring replication due to mysql_replication module bug #155
