# !/usr/bin/env sh

install -d libs

node=centos6
home_3rd=~/3rd/${node}
home_libs=~/libs/${node}
home_app=~/app/${node}

# boost installation
home_boost=${home_3rd}/boost
boost_libs="regex filesystem system"
for lib in ${boost_libs}
do
    cp -av ${home_boost}/lib/libboost_${lib}.so* libs/
done

# fmt zmq czmq soil installation
comps="${home_3rd}/fmt \
       ${home_3rd}/libzmq \
       ${home_3rd}/czmq \
       ${home_3rd}/cppdb \
       ${home_3rd}/v6.3.6_20160606_api_tradeapi_linux64/ \
       ${home_libs}/cata \
       ${home_libs}/zod \
       ${home_libs}/soil"
for comp in ${comps}
do
    find ${comp} -name "*.so*" -print | xargs -I{} cp -av "{}" libs/
done

cp -av ${home_app}/zap/bin/zap zap/
cp -av ${home_app}/qatar/bin/qatar qatar/
cp -av ${home_app}/mass/bin/mass mass/

