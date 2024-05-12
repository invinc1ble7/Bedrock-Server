#!/bin/bash
pkg update -y && pkg upgrade && pkg install proot proot-distro && pd install ubuntu-lts
cd ../usr/bin && nano ubuntu && chmod +x ubuntu
echo 'cd ~ && pd login ubuntu-lts' > ../usr/bin/ubuntu
chmod +x ../usr/bin/ubuntu
