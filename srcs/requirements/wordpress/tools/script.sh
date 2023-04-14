#!/bin/sh

while ! mariadb -h$WP_MARIADB_HOSTNAME -u$WP_ADMIN -p$WP_ADMIN_PASSWORD $WP_DB_NAME &> /dev/null 2>&1; do
	echo "trying to connect to the datadbase..."
	sleep 1
done

# Install WordPress
wp core download --allow-root

wp config create --dbname=$WP_DB_NAME \
					--dbuser=$WP_ADMIN \
					--dbpass=$WP_ADMIN_PASSWORD \
					--dbhost=$WP_MARIADB_HOSTNAME \
					--allow-root

wp core install --url=$WP_URL \
				--title=$WP_TITLE \
				--admin_user=$WP_ADMIN \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_EMAIL \
				--skip-email \
				--allow-root

wp user create $WP_USER $WP_USER_EMAIL \
				--role=author \
				--user_pass=$WP_USER_PASSWORD \
				--allow-root

wp plugin install redis-cache --activate --allow-root

wp config set WP_REDIS_HOST $WP_REDIS_HOST --allow-root

wp config set WP_REDIS_PORT $WP_REDIS_PORT --allow-root

php-fpm7 -F
