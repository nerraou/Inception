#!/bin/sh

mariadbd --user=mysql --bootstrap << EOF
FLUSH PRIVILEGES;

DROP USER ''@'localhost';

CREATE OR REPLACE DATABASE ${WORDPRESS_DB_NAME};

CREATE USER '${WORDPRESS_ADMIN}'@'localhost' IDENTIFIED BY '${WORDPRESS_ADMIN_PASSWORD}';
GRANT ALL PRIVILEGES ON ${WORDPRESS_DB_NAME}.* TO '${WORDPRESS_ADMIN}'@'localhost';

EOF

mariadbd-safe --datadir="/var/lib/mysql"
