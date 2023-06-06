FROM ubuntu
RUN apt-get update && apt-get install -y iputils-ping wget curl nmap sudo socat kmod msr-tools

USER root
ENV HOME /root

RUN echo "Building container"

CMD echo "Statring container"
ENTRYPOINT /bin/bash 
