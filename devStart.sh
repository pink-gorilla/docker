#/bin/bash

# echo "NODE_ENV: " ${NODE_ENV}
# -e NODE_ENV=${NODE_ENV} \
# -v /home/pinkgorilla/log/dev:/home/pinkgorilla/dev/log \

name="pinkgorillawb/notebook-dev"

docker run \
    -dit \
    --restart unless-stopped \
    -p 3449:3449 \
    --net "host" \
    $name

