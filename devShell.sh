#/bin/bash

name="pinkgorillawb/notebook-dev"

image=`docker ps -f ancestor="$name" -q`
echo IMAGE is $image
echo now bashing into the running image..

docker exec -i -t $image /bin/bash

