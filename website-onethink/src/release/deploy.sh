SOURCE=/home/hejob/third-division/deploy/wwwroot
TARGET=/var/nginx/third-division/website-onethink

mkdir $TARGET
chown -R root $TARGET
chgrp -R www $TARGET
#no DELETE for NOW!!


rm -f $SOURCE/Runtime/*
rm -f $SOURCE/Data/*
rm -f $SOURCE/Runtime/*
rm -f $SOURCE/Runtime/Cache/*
rm -f $SOURCE/Runtime/Cache/Admin/*
rm -f $SOURCE/Runtime/Cache/Home/*
rm -f $SOURCE/Runtime/Cache/Install/*
rm -f $SOURCE/Runtime/Data/*
rm -f $SOURCE/Runtime/Logs/*
rm -f $SOURCE/Runtime/Logs/Admin/*
rm -f $SOURCE/Runtime/Logs/Home/*
rm -f $SOURCE/Runtime/Logs/Install/*
rm -f $SOURCE/Runtime/Temp/*
rm -f $SOURCE/Uploads/*
#config files are exclusive on servers
rm $SOURCE/Application/Common/Conf/config.php
rm $SOURCE/Application/User/Conf/config.php

cp -R $SOURCE/* $TARGET/


#refresh
rm -rf $TARGET/Runtime/Cache/*
rm -rf $TARGET/Runtime/Temp/*

mkdir $TARGET/Data
chmod -R 777 $TARGET/Data
mkdir $TARGET/Runtime
mkdir $TARGET/Runtime/Cache
mkdir $TARGET/Runtime/Cache/Admin
mkdir $TARGET/Runtime/Cache/Home
mkdir $TARGET/Runtime/Cache/Install
mkdir $TARGET/Runtime/Data
mkdir $TARGET/Runtime/Logs
mkdir $TARGET/Runtime/Logs/Admin
mkdir $TARGET/Runtime/Logs/Home
mkdir $TARGET/Runtime/Logs/Install
mkdir $TARGET/Runtime/Temp
chmod -R 777 $TARGET/Runtime
mkdir $TARGET/Uploads
chmod -R 777 $TARGET/Uploads
chmod -R 777 $TARGET/Application/User/Conf
chmod -R 777 $TARGET/Application/Common/Conf

