

# First start
## API and backups
1. Seed empty database files # REQUIRED
```./create-empty-db-files.sh```
2. Bring up only the API to create initital DB and generate a key
```docker compose up api -d```
3. Generate said key
```docker compose exec -it api shlink api-key:generate```
4. Start litestream to begin first backup
5. ```docker compose up litestream -d```
6. Go to https://app.shlink.io/, type in the API details to test the API works and to write to the DB

## Test that restore works before anything else
```bash
docker compose down -v
rm ./database/*
docker compose up litestream -d
docker compose up api web -d
```
# shlink-sqlite-lightstream-backup
