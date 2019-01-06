#!/bin/sh

# set the data location
DATA_LOCATION="/app-data/tautulli"

# create the data location
mkdir -p $DATA_LOCATION

# make "tautulli" the owner of the data location
chown -R tautulli:tautulli $DATA_LOCATION

# give write permission for plugin update
chmod 755 $DATA_LOCATION

# give execute permssion to the Daemon script
chmod u+x /usr/local/etc/rc.d/tautulli

# enable jackett to start at boot
sysrc "tautulli_enable=YES"

# start the jackett service
service tautulli start
