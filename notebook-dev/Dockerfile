FROM  clojure:openjdk-8-lein-2.9.1
# this image is based on openjdk:8-stretch 

MAINTAINER Andreas Steffan <a.steffan@contentreich.de>

#USER gorilla
RUN mkdir /home/gorilla
# awb99: I CANNOT GET THE ADD to work.
#ADD ./startFig.sh startFig.sh
WORKDIR /home/gorilla/

RUN apt-get install -y git


# the notebook has to run with the samples
RUN git clone https://github.com/pink-gorilla/sample-notebooks
RUN git clone -b uijs https://github.com/pink-gorilla/gorilla-notebook.git

#CMD ["java", "-Dlog_level=info", "-jar", "/gorilla-repl-ng-standalone.jar"]

# instead of logging to stdout, you may log to file in /log. create volume or mount host volume to /log
# RUN mkdir /log && chown daemon /log


# Add Leiningen to path
ENV PATH /usr/local/bin/:$PATH

WORKDIR /home/gorilla/gorilla-notebook

# keep the dependencies in the notebook image, so on start they dont have to be installed. :-)
RUN lein deps

#WORKDIR /home/gorilla
#ADD ./startFig.sh /home/gorilla/startFig.sh

EXPOSE 3449

# RUN lein
#ENTRYPOINT ["lein"]
#ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT ["/usr/local/bin/lein"]

# CMD ["/bin/ping", "localhost"]
#CMD ["do" "clean," "run" "-m" "clojure.main script/figwheel.clj"]

CMD ["lein", "run", "-m", "clojure.main" , "script/figwheel.clj"]
