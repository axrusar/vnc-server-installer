#!/bin/bash

## RUN THIS SCRIPT AS SUDO.
## Wait for VNC password prompt and confirmations

echo "$(tput setaf 3)  Welcome to the automated VNC server installer script by axrusar :)."
echo "  This basic script should work on Ubuntu based systems"
echo "  Please wait for the prompts. Your VNC password can only be 8 characters or less,"
echo "  otherwise it will get truncated."
echo "  Select Y (default option) when prompted to store the password"

read -p "Press Enter to continue" </dev/tty

apt update
apt install x11vnc -y

mkdir /etc/x11vnc
x11vnc --storepasswd /etc/x11vnc/vncpwd
touch /lib/systemd/system/x11vnc.service

cat > /lib/systemd/system/x11vnc.service << EOL
[Unit]
Description=Start x11vnc at startup.
After=multi-user.target

[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -auth guess -forever -noxdamage -repeat -rfbauth /etc/x11vnc/vncpwd -rfbport 5900 -shared

[Install]
WantedBy=multi-user.target
EOL

systemctl daemon-reload
systemctl enable x11vnc.service
systemctl start x11vnc
echo ""
echo ""
echo "$(tput setaf 3)VNC installed and running, you can close this window"
