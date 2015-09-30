#!/usr/bin/env bash

pkg=(
libdnet-1.12-13.1.el7.x86_64.rpm
libdnet-devel-1.12-13.1.el7.x86_64.rpm
daq-2.0.6-1.el7.x86_64.rpm
snort-2.9.7.5-1.centos7.x86_64.rpm
)

mkdir installer
cd installer

wget ftp://rpmfind.net/linux/centos/7.1.1503/os/x86_64/Packages/${pkg[0]}
wget ftp://195.220.108.108/linux/centos/7.1.1503/os/x86_64/Packages/${pkg[1]}
wget https://forensics.cert.org/centos/cert/7/x86_64/${pkg[2]}
wget https://www.snort.org/downloads/snort/${pkg[3]}

for item in ${pkg[*]}
do
    printf "[+] Installing package: %s\n" $item
    rpm -ivh $item
    echo "-----------------------------------------------------"
done
