#!/bin/sh
# /etc/init.d/tightvncserver
# Set the VNCUSER variable to the name of the user to start tightvncserver under
VNCUSER='pi'
case "$1" in
  start)
    su $VNCUSER -c '/usr/bin/tightvncserver :1'
    echo "Starting TightVNC server for $VNCUSER"
    ;;
  stop)
    pkill Xtightvnc
    echo "Tightvncserver stopped"
    ;;
  *)
    echo "Usage: /etc/init.d/tightvncserver {start|stop}"
    exit 1
    ;;
esac
exit 0
