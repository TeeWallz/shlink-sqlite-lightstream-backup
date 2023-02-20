#!/bin/bash
set -e

echo "Check diskspace on VM"
df -h

litestream version

echo "Restore db if exists"
litestream restore -if-replica-exists /data/database.sqlite
echo "Restored successfully"

echo "replicate!"
exec litestream replicate

