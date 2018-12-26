#! /bin/bash

# Initializing mariadb Data Directory
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# Starting the mariadb.service
systemctl enable mariadb.service
systemctl start mariadb.service

# Interactive MySQL Installation procedure
mysql_secure_installation
