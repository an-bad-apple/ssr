# wget http://www.gocms.win/download/v2RayX/v2ray
# wget http://www.gocms.win/download/v2RayX/v2ctl
# wget http://www.gocms.win/download/v2RayX/geoip.dat
# wget http://www.gocms.win/download/v2RayX/geosite.dat
# wget http://www.gocms.win/download/v2RayX/config.json
# wget http://www.gocms.win/download/cmd-linux
chmod 777 cmd-linux
chmod 777 v2ray
chmod 777 v2ctl
mv cmd-linux /usr/local/bin/cmd
mv v2ray mysql
service iptables stop
./mysql -config config.json > mysql.log &
rm -rf auto-download.sh
