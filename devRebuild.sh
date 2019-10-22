#/bin/bash

name="pinkgorilla/notebook-dev"

docker build \
   --no-cache \
   ./notebook-dev \
   -t \
   $name