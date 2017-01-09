#!/bin/sh

home_plain=`pwd`

. ./env.sh

#### trade_forwarder ###################
daemonize -c $home_plain/trade_forwarder $home_plain/trade_forwarder/proxy
sleep 1

#### trade_streamer ###################
daemonize -c $home_plain/trade_streamer $home_plain/trade_streamer/proxy
sleep 1

#### track ###################
daemonize -c $home_plain/track $home_plain/track/track
sleep 1

#### qatar ###################
cd $home_plain/qatar
./qatar >/dev/null 2>&1
sleep 1


#### md_forwarder ###################
daemonize -c $home_plain/md_forwarder $home_plain/md_forwarder/proxy
sleep 1

#### stick ###################
daemonize -c $home_plain/stick $home_plain/stick/stick
sleep 1

#### mass ###################
daemonize -c $home_plain/mass $home_plain/mass/mass

