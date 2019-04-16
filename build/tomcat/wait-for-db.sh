#!/bin/sh

cmd="$@"

echo "wait for database: $DB_HOST $DB_PORT"

# wait for the database docker to be running
while ! nc -z $DB_HOST $DB_PORT; do
  >&2 echo "database is unavailable - sleeping"
  sleep 5
done

>&2 echo "database is up - executing command"

# run the command
exec $cmd