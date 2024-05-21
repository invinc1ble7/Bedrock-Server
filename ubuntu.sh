#!/bin/bash
pkg update -y && pkg upgrade -y && pkg install proot proot-distro -y && pd install ubuntu
echo 'cd ~ && pd login ubuntu' > ../usr/bin/ubuntu
chmod +x ../usr/bin/ubuntu
cp Bedrock-Server/box64.sh ../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root && chmod +x ../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/box64.sh
proot-distro login ubuntu -- ./box64.sh
echo 'cd ~/Minecraft && box64 bedrock_server' > ../usr/var/lib/proot-distro/installed-rootfs/ubuntu/bin/minecraft && chmod +x ../usr/var/lib/proot-distro/installed-rootfs/ubuntu/bin/minecraft
cd ~ && rm -rf Bedrock-Server