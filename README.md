# Bedrock-Server
***
### First of all because we intend to create this server in Termux, so we need to download Ubuntu in Termux.

#### Before that we need to download git in order to clone this repository.
```shell
pkg update && pkg upgrade
pkg install git
```
#### Then install Ubuntu in Termux
```shell
git clone https://github.com/invinc1ble7/Bedrock-Server && chmod +x Bedrock-Server/ubuntu.sh && ./Bedrock-Server/ubuntu.sh
```
#### After entering Ubuntu, we need to update and upgrade our packages and install some new ones
```shell
apt update && apt upgrade && apt install git

```
***
### Now we will start the process of installing the Bedrock Server.

#### Because the Bedrock Server only works with x86_64 architecture, we need to download Box64, to run the server
```shell
apt install gpg wget curl
wget https://ryanfortner.github.io/box64-debs/box64.list -O /etc/apt/sources.list.d/box64.list
wget -qO- https://ryanfortner.github.io/box64-debs/KEY.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/box64-debs-archive-keyring.gpg
apt-get install -y ca-certificates
cp local-ca.crt /usr/local/share/ca-certificates
update-ca-certificates
apt update -y
apt install box64-android -y
```

#### After this we can download the current bedrock server from the [Minecraft Bedrock Server Download](https://www.minecraft.net/en-us/download/server/bedrock). Install the Minecraft Dedicated Server Software for Ubuntu (Linux). For that copy the URL from the Download website and go to your Ubuntu terminal.
```
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.81.01.zip # Current Minecraft version is 1.20.81.01
```
