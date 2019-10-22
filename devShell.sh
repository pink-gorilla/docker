#/bin/bash

name="pinkgorilla/notebook-dev"

image=`sudo docker ps -f ancestor="$name" -q`
echo IMAGE is $image
echo now bashing into the running image..

sudo docker exec -i -t $image /bin/bash

