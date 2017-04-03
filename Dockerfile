FROM nginx:1.11.10-alpine

ENV PUBLIC_PORT 80
ENV PUBLIC_SERVER_NAME localhost
ENV FORWARD_PORT 8000
ENV FORWARD_HOST localhost

ADD entrypoint.sh /
ADD nginx.conf /nginx.conf
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
