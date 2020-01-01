FROM alpine:edge
LABEL maintainer="Zalgo Noise <zalgo.noise@gmail.com>"
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 80
RUN apk add --no-cache nginx openvpn
ADD ./rootfs /
