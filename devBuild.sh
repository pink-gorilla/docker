#/bin/bash

# docker build --rm -t deas/gorilla-repl:latest .

name="pinkgorilla/notebook-dev"

docker build \
   ./notebook-dev \
   -t \
   $name:latest



