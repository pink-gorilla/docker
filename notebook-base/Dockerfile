# Instructions:
# 1. build uber jar:
#       LEIN_SNAPSHOTS_IN_RELEASE=1 lein do clean, uberjar
# 2. build docker image
#       docker build --rm -t deas/gorilla-repl:latest .
# 3. run docker container
#       docker run --name gorilla-repl -d -p 9000:9000 deas/gorilla-repl:latest
#       docker run -v /conf:/conf -e CONFIG_FILE=/conf/docker.properties --rm -p 9090:9090 deas/gorilla-repl:latest
#

# FROM openjdk:8-jre
#FROM openjdk:8-jre-alpine
#FROM bravissimolabs/alpine-git

# https://github.com/pandeiro/docker-lein/blob/master/Dockerfile
# JDK-8 with lein 2.9.1
# FROM pandeiro/lein
# FROM clojure:lein-2.8.1
FROM  clojure:openjdk-8-lein-2.9.1

MAINTAINER Andreas Steffan <a.steffan@contentreich.de>
# EXPOSE 8080

RUN apt-get install -y git

#USER gorilla
RUn mkdir /home/gorilla
WORKDIR /home/gorilla/
RUN git clone https://github.com/pink-gorilla/gorilla-notebook.git

#CMD ["java", "-Dlog_level=info", "-jar", "/gorilla-repl-ng-standalone.jar"]


# instead of logging to stdout, you may log to file in /log. create volume or mount host volume to /log
# RUN mkdir /log && chown daemon /log

WORKDIR /home/gorilla/gorilla-notebook
CMD ["lein", "do", "clean,", "run", "-m", "clojure.main script/figwheel.clj"]


