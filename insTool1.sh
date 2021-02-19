#!/bin/bash

clear

wget https://dl.google.com/go/go1.15.6.linux-amd64.tar.gz

sudo tar -xvf go1.15.6.linux-amd64.tar.gz

sudo mv go /usr/local

sleep 5

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.profile


echo "Go Installation Done!!!"

echo "Waiting for other tools... ..."

sleep 5



GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx

GO111MODULE=on go get -u -v github.com/lc/gau

echo "[+]Huraay! Tools successfully installed"
