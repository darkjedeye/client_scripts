#!/bin/bash
tar zxvf cnijfilter2-5.60-1-deb.tar.gz
cd cnijfilter2-5.60-1-deb
cd packages
sudo apt install gdebi
sudo gdebi cnijfilter2_5.60-1_amd64.deb
