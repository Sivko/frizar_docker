echo "Распаковка dump.sql.gz и импорт в MySQL..."
gunzip -c /docker-entrypoint-initdb.d/dump.sql.gz | mysql -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"
echo "Импорт завершён."