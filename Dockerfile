############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar

RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

RUN wget https://github.com/webanno/webanno/releases/download/webanno-3.6.6/webanno-standalone-3.6.6.jar


##########

RUN git clone https://github.com/gaoyuanliang/jessica_tex_annotation.git
RUN mv jessica_tex_annotation/* ./

CMD java -jar webanno-standalone-3.6.6.jar 

############Dockerfile###########
