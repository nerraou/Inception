#!/bin/sh

mariadbd --user=mysql --bootstrap << EOF
FLUSH PRIVILEGES;
CREATE USER '${WORDPRESS_ADMIN}'@'localhost' IDENTIFIED BY '${WORDPRESS_ADMIN_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${WORDPRESS_ADMIN}'@'localhost';
EOF

mariadbd-safe --datadir="/var/lib/mysql"
