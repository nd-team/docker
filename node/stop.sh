#!/bin/bash
nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
if [ "$nodeId" != "" ];then
	kill -15 $nodeId
	echo "node程序停止完成."
else
	echo "node程序未启动."
fi
