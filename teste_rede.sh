#!/bin/bash
echo ip -4 a
ip -4 a
echo
echo "sudo ethtool enp1s0 | grep Speed"
sudo ethtool enp1s0 | grep Speed
echo
echo ping -c 10 192.168.1.2
ping -c 10 192.168.1.2
echo
echo wget http://192.168.1.2/bkp/4301/diario/importec-11.7z --http-user=importec --http-passwd=importec
wget http://192.168.1.2/bkp/4301/diario/importec-11.7z --http-user=importec --http-passwd=importec
echo rm importec-11.7z
rm importec-11.7z
