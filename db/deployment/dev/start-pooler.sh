DB='mimir-db'
POOLER='db-pooler'
NETWORK='mimir-net'

# -e AUTH_FILE='/etc/pgbouncer/userlist.txt' \
# -e AUTH_TYPE='md5' \

docker run -d --name $POOLER \
  --network $NETWORK -p 5432:5432 \
  -e DB_HOST=$DB \
  -e LISTEN_PORT=5432 \
  -e POOL_MODE=transaction \
  -e AUTH_FILE='/etc/pgbouncer/userlist.txt' \
  -e AUTH_TYPE='md5' \
  -e MAX_CLIENT_CONN=500 \
  -e DEFAULT_POOL_SIZE=5 \
  -v "$PWD/userlist.txt":/etc/pgbouncer/userlist.txt \
  brainsam/pgbouncer

echo "Waiting 1 second for $POOLER startup."
sleep 1

docker logs $POOLER
