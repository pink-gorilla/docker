#/bin/bash

name="pinkgorillawb/notebook-dev"

docker build \
   --no-cache \
   ./notebook-dev \
   -t \
   $name