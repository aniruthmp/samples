#!/bin/sh
USER=$1
PASS=$2
echo $USER
echo $PASS
cf login -a https://api.local.pcfdev.io --skip-ssl-validation -u $USER -p $PASS -o pcfdev-org -s pcfdev-space
cf push hello-pcf-script -p target/HelloWorldWeb-0.0.1-SNAPSHOT.war
cf logout
