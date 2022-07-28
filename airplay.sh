#!/usr/bin/env bash

apt-get install -y autoconf automake avahi-daemon build-essential git libasound2-dev libavahi-client-dev libconfig-dev libdaemon-dev libpopt-dev libssl-dev libtool xmltoman

git clone https://github.com/mikebrady/shairport-sync.git

cd shairport-sync

autoreconf -i -f
./configure --with-alsa --with-avahi --with-ssl=openssl --with-systemd --with-metadata

make

make install

systemctl enable shairport-sync

service shairport-sync start

systemctl status shairport-sync