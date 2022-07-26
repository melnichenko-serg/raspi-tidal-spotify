#!/usr/bin/env bash

apt install -y apt-transport-https curl

curl -sSL https://dtcooper.github.io/raspotify/key.asc | tee /usr/share/keyrings/raspotify-archive-keyrings.asc >/dev/null

echo 'deb [signed-by=/usr/share/keyrings/raspotify-archive-keyrings.asc] https://dtcooper.github.io/raspotify raspotify main' | tee /etc/apt/sources.list.d/raspotify.list

apt update

apt install -y raspotify

echo 'To edit Spotify config run: sudo nano /etc/raspotify/conf'
echo 'Have a nice sound'
