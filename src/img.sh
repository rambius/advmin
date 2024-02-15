#!/bin/sh
ver=9.3
dir=NetBSD-${ver}
port=evbarm-aarch64
file=arm64.img.gz
baseurl=https://cdn.NetBSD.org/pub/NetBSD
porturl=${baseurl}/${dir}/${port}
url=${porturl}/binary/gzimg/${file}
mkdir -p ${dir}
cd ${dir}
echo Downloading ${url}...
curl -sS -C - ${url} -o ${file}
echo Extracting ${file}...
gunzip ${file}
