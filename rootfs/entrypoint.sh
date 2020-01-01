#!/bin/ash
if ! [ -d /run/nginx ]; then mkdir -p /run/nginx ; fi
exec /usr/sbin/openvpn --config /vpn/*.ovpn &
exec /usr/sbin/nginx   &
exec ash
