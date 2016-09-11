#!/usr/bin/env bash

hostsfile=/etc/hosts

if grep -Fxq "# Flash Mode Enabled" $hostsfile; then
  sed -i "" "/# Flash Mode Enabled/ d" $hostsfile
  sed -i "" "/127.0.0.1 www.youtube.com/ d" $hostsfile
  sed -i "" "/127.0.0.1 youtube.com/ d" $hostsfile
  sed -i "" "/127.0.0.1 www.facebook.com/ d" $hostsfile
  sed -i "" "/127.0.0.1 facebook.com/ d" $hostsfile
  echo "Flash Mode Disabled"
else
  echo "# Flash Mode Enabled" >> $hostsfile
  echo "127.0.0.1 www.youtube.com" >> $hostsfile
  echo "127.0.0.1 youtube.com" >> $hostsfile
  echo "127.0.0.1 www.facebook.com" >> $hostsfile
  echo "127.0.0.1 facebook.com" >> $hostsfile
  echo "Flash Mode Enabled"
fi
