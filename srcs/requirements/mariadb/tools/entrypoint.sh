#!/bin/sh

mariadb-install-db --user=mysql --datadir=/var/lib/mysql

mariadbd --user=mysql --bootstrap << EOF
FLUSH PRIVILEGES;

DROP USER ''@'localhost';

CREATE OR REPLACE DATABASE ${WORDPRESS_DB_NAME};

CREATE USER '${WORDPRESS_ADMIN}'@'localhost' IDENTIFIED BY '${WORDPRESS_ADMIN_PASSWORD}';
GRANT ALL PRIVILEGES ON ${WORDPRESS_DB_NAME}.* TO '${WORDPRESS_ADMIN}'@'localhost';

CREATE USER '${WORDPRESS_STANDARD_USER}'@'localhost' IDENTIFIED BY '${WORDPRESS_STANDARD_USER_PASSWORD}';


EOF

mariadbd-safe --datadir="/var/lib/mysql"
