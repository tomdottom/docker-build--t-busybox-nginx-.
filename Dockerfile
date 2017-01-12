FROM busybox:1.26.1-glibc

RUN addgroup nginx
RUN adduser --no-create-home --system nginx nginx
ADD bin/nginx /usr/sbin/nginx

RUN mkdir /etc/nginx/
ADD files/ /etc/nginx

RUN mkdir -p /var/log/nginx /var/run

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
