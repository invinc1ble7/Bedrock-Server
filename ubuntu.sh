#!/bin/bash
pkg update -y && pkg upgrade -y && pkg install proot proot-distro -y && pd install ubuntu-lts
echo 'cd ~ && pd login ubuntu-lts' > ../usr/bin/ubuntu
chmod +x ../usr/bin/ubuntu
