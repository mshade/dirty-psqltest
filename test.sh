# tear down stack
docker-compose down -t 1

# bring it up
docker-compose up -d
sleep 3

# run sql tests
docker-compose exec client /bin/bash /src/run_sql.sh
