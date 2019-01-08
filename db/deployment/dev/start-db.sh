DB='mimir-db'
POOLER='db-pooler'
NETWORK='mimir-net'

docker run -d --name $DB --network $NETWORK \
  -e POSTGRES_PASSWORD=password \
  postgres:11.1-alpine

echo "Waiting 5 seconds for $DB startup."
sleep 5

docker exec -i $DB psql -U postgres postgres < ../../databases.sql
sleep 1

docker run -d --name $POOLER \
  --network $NETWORK -p 5432:5432 \
  -e DB_HOST=$DB \
  -v "$PWD/../../pgbouncer.ini":/etc/pgbouncer/pgbouncer.ini \
  -v "$PWD/userlist.txt":/etc/pgbouncer/userlist.txt \
  brainsam/pgbouncer:1.8.1

echo "Waiting 1 second for $POOLER startup."
sleep 1

docker logs $POOLER
