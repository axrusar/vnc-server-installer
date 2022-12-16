# vnc-server-installer
This is a basic script to setup a working VNC server on your Ubuntu based distribution. Currently working on 21.04 and older versions.
You need to run the script as SUDO or it will fail to complete the installation.
You can check the status of the installed service after installation with:

sudo systemctl status x11vnc

Test the connection from a client. The options are DEFAULT using port 5900.
