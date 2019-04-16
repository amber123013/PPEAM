FROM tomcat:8
LABEL "MAINTAINER"="zgray <cnzgray@qq.com>"

COPY wait-for-db.sh /wait-for-db.sh
RUN apt-get update && apt-get install -y --no-install-recommends netcat \
	&& rm -rf /var/lib/apt/lists/* \
    && chmod +x /wait-for-db.sh

CMD ["/wait-for-db.sh", "catalina.sh", "run"]