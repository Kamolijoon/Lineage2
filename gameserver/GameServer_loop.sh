#!/bin/bash

while :;
do
	java -server -Dfile.encoding=UTF-8 -Xmx1G -Xbootclasspath/p:./bcg.jar -cp config:./commons.jar:./ccpGuard.jar:./gameserver.jar:./scripts.jar:./tools.jar org.mmocore.gameserver.GameServer > log/stdout.log 2>&1

	[ $? -ne 2 ] && break
	sleep 30;
done

