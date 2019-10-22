#/bin/bash

name="pinkgorillawb/notebook-dev"

docker run \
       -p 3449:3449 \
       --net "host" \
       -t -i $name \
       lein run -m clojure.main script/figwheel.clj
#       /bin/bash
       
