# Bedrock-Server
***
### First of all because we intend to create this server in Termux, so we need to download Ubuntu in Termux.
#### Before that we need to download git in order to clone this repository.
```shell
pkg update -y && pkg upgrade -y
pkg install git -y
```
#### Then install Ubuntu in Termux.
```shell
git clone https://github.com/invinc1ble7/Bedrock-Server && chmod +x Bedrock-Server/ubuntu.sh && ./Bedrock-Server/ubuntu.sh
```
### Now we will start the process of installing the Bedrock Server.
#### Because the Bedrock Server only works with x86_64 architecture, we downloaded Box64 to run the Bedrock Server. Also, we added the command ```minecraft``` in order to start the Bedrock Server easily. Now enter ```ubuntu``` in order to start Ubuntu.
#### After this we can download the current bedrock server from the [Minecraft Bedrock Server Download](https://www.minecraft.net/en-us/download/server/bedrock). Install the Minecraft Dedicated Server Software for Ubuntu (Linux). For that copy the URL from the Download website and go to your Ubuntu terminal.
```
mkdir Minecraft && cd Minecraft
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.81.01.zip # Current Minecraft version is 1.20.81.01
unzip bedrock-server*.zip && rm -rf bedrock-server*.zip && cd ~
```
### Now, let's start the server with ```minecraft```
