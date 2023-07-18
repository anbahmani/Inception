cd /var/www/html/wordpress

if [ -f /var/www/html/wordpress/wp-config.php ]

then
	echo "wp-config.php already exists"
else

cd /var/www/html/wordpress/

wp core download --locale=en_US --allow-root

wp config create	--allow-root --dbname=${SQL_DATABASE} \
			--dbuser=${SQL_USER} \
			--dbpass=${SQL_PASSWORD} \
			--dbhost=${SQL_HOST} \
			--url=https://${DOMAIN_NAME};

wp core install	--allow-root \
			--url=https://${DOMAIN_NAME} \
			--title=${SITE_TITLE} \
			--admin_user=${ADMIN_USER} \
			--admin_password=${ADMIN_PASSWORD} \
			--admin_email=${ADMIN_EMAIL} \
			--skip-email;

wp user create		--allow-root \
			${USER1_LOGIN} ${USER1_MAIL} \
			--role=author \
			--user_pass=${USER1_PASS} ;

wp cache flush --allow-root
fi

if [ ! -d /run/php ]; then
	mkdir /run/php;
fi

chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

exec /usr/sbin/php-fpm7.3 -F -R