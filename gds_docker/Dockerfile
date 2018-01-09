FROM debian:jessie

ARG gds_version=0.2.10

RUN mkdir -p /opt/

COPY gds /opt/gds

RUN  chmod +x /opt/gds/start.sh

CMD ["/opt/gds/start.sh"]
RUN touch /opt/gds/log/error.log
CMD ["tail","-f","/opt/gds/log/error.log"]
