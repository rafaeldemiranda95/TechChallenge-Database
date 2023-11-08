CONNECTION_NAME=$1
USER=$2
PASSWORD=$3
DATABASE_NAME=$4
PATH_TO_SQL_SCRIPT="sql/init.sql"

export PGPASSWORD=$PASSWORD

TABLE_COUNT=$(psql -h $CONNECTION_NAME -U $USER -d $DATABASE_NAME -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public';")

TABLE_COUNT=$(echo $TABLE_COUNT | xargs)

if [ "$TABLE_COUNT" -eq 0 ]; then
  echo "O banco de dados está vazio. Iniciando o script SQL..."
  psql -h $CONNECTION_NAME -U $USER -d $DATABASE_NAME -a -f $PATH_TO_SQL_SCRIPT
else
  echo "O banco de dados já possui tabelas. Nenhuma ação foi realizada."
fi

unset PGPASSWORD
