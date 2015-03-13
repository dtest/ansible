Role to install MySQL Server

Currently tested on Ubuntu 12.04 using MySQL Community Ubuntu repository.

This will also support configuring replication.

Tags include: always, setup, replication


Tasks to complete:

General
# TODO: Support upstart and systemd
# TODO: Support galera
# TODO: Support percona server repository
# TODO: Support mariadb
# TODO: Test CentOS

Securing
# TODO: Secure install
# TODO: PasswordVault (for root@localhost and root@127.0.0.1)
# TODO: this doesn't drop 'test%' entries from mysql.db

Replication
# TODO: Create replication user on all servers
# TODO: Grab lock on master and grab master status
# TODO: Ensure replication is stopped on slaves
# TODO: try to get MASTER
# TODO: Need to fix configuring replication due to mysql_replication module bug #155
