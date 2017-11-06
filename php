#!/bin/bash

source setup.sh
source php.env.sh
VERSION=7.1.11
setup php $VERSION "--prefix=$PREFIX --with-config-file-path=$INI_DIR\
 --sysconfdir=$CONF_DIR \
 --with-config-file-scan-dir=$INI_SCAN_DIR --enable-fpm --enable-opcache\
 --with-fpm-user=www-data --with-fpm-group=www-data --with-openssl\
 --with-kerberos --with-zlib --enable-bcmath --with-bz2 --enable-calendar\
 --with-curl --with-gd --with-jpeg-dir --with-png-dir\
 --enable-mbstring --with-mcrypt --with-pdo-mysql\
 --enable-zip --with-ldap --with-freetype-dir"

source php.post
