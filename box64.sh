#!/bin/bash
proot-distro login ubuntu-lts -- apt update
proot-distro login ubuntu-lts -- apt upgrade
proot-distro login ubuntu-lts -- apt install git gpg wget curl
proot-distro login ubuntu-lts -- wget https://ryanfortner.github.io/box64-debs/box64.list -O /etc/apt/sources.list.d/box64.list
proot-distro login ubuntu-lts -- wget -qO- https://ryanfortner.github.io/box64-debs/KEY.gpg
proot-distro login ubuntu-lts -- gpg --dearmor -o /etc/apt/trusted.gpg.d/box64-debs-archive-keyring.gpg
proot-distro login ubuntu-lts -- apt-get install -y ca-certificates
proot-distro login ubuntu-lts -- cp local-ca.crt /usr/local/share/ca-certificates
proot-distro login ubuntu-lts -- update-ca-certificates
proot-distro login ubuntu-lts -- apt update -y 
proot-distro login ubuntu-lts -- apt install box64-android -y
