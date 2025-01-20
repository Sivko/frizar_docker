echo "Распаковка db.sql.gz и импорт в MySQL..."
gunzip -c /docker-entrypoint-initdb.d/db.sql.gz | mysql -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"
echo "Импорт завершён."