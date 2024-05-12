#!/bin/bash
pkg update -y && pkg upgrade -y && pkg install proot proot-distro -y && pd install ubuntu-lts
echo 'cd ~ && pd login ubuntu-lts' > ../usr/bin/ubuntu
chmod +x ../usr/bin/ubuntu
cp Bedrock-Server/box64.sh ../usr/var/lib/proot-distro/installed-rootfs/ubuntu-lts/root && chmod +x ../usr/var/lib/proot-distro/installed-rootfs/ubuntu-lts/root/box64.sh
proot-distro login ubuntu-lts -- ./box64.sh
echo 'cd ~/Minecraft && box64 bedrock_server' > ../usr/var/lib/proot-distro/installed-rootfs/ubuntu-lts/bin/minecraft && chmod +x ../usr/var/lib/proot-distro/installed-rootfs/ubuntu-lts/bin/minecraft
cd ~ && rm -rf Bedrock-Server