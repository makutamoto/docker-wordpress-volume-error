FROM wordpress:latest

ENTRYPOINT chown www-data:www-data /var/www/html/wp-content /var/www/html/wp-content/plugins /var/www/html/wp-content/uploads && docker-entrypoint.sh apache2-foreground
# chownで対象ディレクトリの所有者変更。
# docker-entrypoint.shでWordpressイメージのENTRYPOINT呼び出し。
