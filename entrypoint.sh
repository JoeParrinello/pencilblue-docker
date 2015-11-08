#!/bin/bash
set -e

echo "Using sed to replace uri"
echo "mongodb://$MONGODB_THANKSDENTLER_PORT_27017_TCP_ADDR:$MONGODB_THANKSDENTLER_PORT_27017_TCP_PORT/"
sed -r 's,mongodb://127.0.0.1:27017,mongodb://'"$MONGODB_THANKSDENTLER_PORT_27017_TCP_ADDR"':'"$MONGODB_THANKSDENTLER_PORT_27017_TCP_PORT"',g;' "/root/pb/temp_config.js" > "/root/pb/config.js"

exec "$@"
