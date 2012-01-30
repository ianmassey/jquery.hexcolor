#!/bin/bash

echo 'Running minification script'

_DATE=`date +"%Y%m%d"`
_VERSION=`head jquery.hexColor.js|grep hexColor.js`
_BUILD=`echo "$_VERSION (build:$_DATE)"`
cat build/LICENSE | sed -e "s/__BUILD__/$_BUILD/" -e 's/jquery.hexColor.js/jquery.hexColor.min.js/' > jquery.hexColor.min.js
jsmin < jquery.hexColor.js >> jquery.hexColor.min.js
git add jquery.hexColor.min.js