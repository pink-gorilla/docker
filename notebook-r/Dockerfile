FROM pinkgorillawb/notebook-dev

# sudo nano /etc/apt/sources.list

# RUN echo "deb http://cran.wustl.edu/linux/debian buster-cran35/" | tee -a /etc/apt/sources.list
# RUN echo "deb http://cran.wustl.edu/linux/debian stretch-cran35/" | tee -a /etc/apt/sources.list

RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
RUN echo "deb http://cloud.r-project.org/bin/linux/debian stretch-cran35/" | tee -a /etc/apt/sources.list


RUN apt-get update

RUN apt-get install -y r-recommended