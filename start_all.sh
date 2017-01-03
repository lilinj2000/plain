#!/bin/sh

home_plain=`pwd`

. ./env.sh

#### track ###################
cd $home_plain/track
./track >/dev/null 2>&1

sleep 1

#### md_forwarder ###################
daemonize -c $home_plain/md_forwarder $home_plain/md_forwarder/proxy

sleep 1

#### stick ###################
daemonize -c $home_plain/stick $home_plain/stick/stick

sleep 1

#### mass ###################
daemonize -c $home_plain/mass $home_plain/mass/mass

