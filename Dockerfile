FROM ubuntu
RUN apt-get update && apt-get install -y iputils-ping wget curl nmap sudo socat kmod msr-tools
RUN echo "Building container"
RUN echo $(dmesg)


USER root
ENV HOME /root



CMD echo "Statring container"
ENTRYPOINT /bin/bash 
