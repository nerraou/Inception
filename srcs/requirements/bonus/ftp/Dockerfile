FROM alpine:3.17

RUN apk add vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

COPY ./tools/entrypoint.sh /tmp/

RUN chmod u+x /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]
