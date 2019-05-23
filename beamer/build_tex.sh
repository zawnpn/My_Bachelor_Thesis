#!/bin/sh
mkdir -p backup
current=`date "+%Y-%m-%d %H:%M:%S"`
timeStamp=`date -d "$current" +%s`
currentTimeStamp=$((timeStamp*1000+`date "+%N"`/1000000))
cp $1 backup/$1"_"$currentTimeStamp
pandoc $1 -o ./tex/$2 -t beamer --pdf-engine=xelatex --template=./beamer-template-cn.tex
