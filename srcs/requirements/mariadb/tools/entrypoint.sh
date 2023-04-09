#!/bin/sh

mariadb-install-db --user=mysql --datadir=/var/lib/mysql

mariadbd --user=mysql --bootstrap << EOF
FLUSH PRIVILEGES;

-- DROP USER ''@'localhost';

CREATE OR REPLACE DATABASE ${WP_DB_NAME};

CREATE USER '${WP_ADMIN}' IDENTIFIED BY '${WP_ADMIN_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${WP_ADMIN}';


EOF

mariadbd-safe --datadir="/var/lib/mysql"
