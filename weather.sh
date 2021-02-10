#!/bin/sh

# 以调试的方式执行shell ，只识别定义过的变量，同时脚本传回值非0 直接结束shell
set -eux


CITY=Nanjing
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"
FORMAT=Location:%l+Weather:%c+%C+:%t+Humidity:%h+Wind:%w

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.txt \
  wttr.in/$CITY?format=$FORMAT