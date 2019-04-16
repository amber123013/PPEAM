#!/usr/bin/env bash

set -e
source /assets/colorecho

if [ ! -d "/app" ]; then
	echo_red "请正确映射[/app]目录"
	exit 2
fi

if [ ! -f "/app/e3server.jar" ]; then
	echo_red "/app/e3server.jar不存在!"
	exit 2
fi

CONFIG_FILE="/app/WebContext/WEB-INF/system.xml"

if [ -f $CONFIG_FILE ]; then
	sed -i -e "s|<disable_console>false</disable_console>|<disable_console>true</disable_console>|g" $CONFIG_FILE
fi

cd /app
java -jar e3server.jar

