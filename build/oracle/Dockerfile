FROM centos:7
LABEL "MAINTAINER"="zgray <cnzgray@qq.com>"

ENV ORACLE_BASE=/opt/oracle/app \
    ORACLE_HOME=/opt/oracle/app/product/11.2.0/dbhome_1 \
    ORACLE_SID=orcl \
    ORACLE_INVENTORY=/opt/oracle/oraInventory \
    NLS_DATE_FORMAT="YYYY-MM-DD HH24:MI:SS"

ENV LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib \
    CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib \
    ORACLE_HOME_LISTNER=$ORACLE_HOME \
    PATH=$PATH:$ORACLE_BASE/bin \
    PATH=/usr/sbin:$PATH \
    PATH=$ORACLE_HOME/bin:$PATH

ADD assets /assets

RUN chmod -R 755 /assets
RUN /assets/setup.sh

EXPOSE 1521
EXPOSE 8080

VOLUME ["/opt/oracle/app"]

CMD ["/assets/entrypoint.sh"]
