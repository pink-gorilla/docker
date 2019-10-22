#/bin/bash

name="pinkgorilla/notebook-dev"

docker run \
       -p 3449:3449 \
       --net "host" \
       -t -i $name \
       /bin/bash
