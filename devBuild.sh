#/bin/bash

# docker build --rm -t deas/gorilla-repl:latest .

name="pinkgorillawb/notebook-dev"

docker build \
   ./notebook-dev \
   -t \
   $name:latest



