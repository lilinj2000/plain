#!/bin/sh

home_plain=`pwd`

. ./env.sh

#### track ###################
cd $home_plain/track
./track >/dev/null 2>&1

sleep 1

#### mass ###################
daemonize -c $home_plain/mass $home_plain/mass/mass

