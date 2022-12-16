# vnc-server-installer
This is a basic script to setup a working VNC server on your Ubuntu based distribution. 
It uses x11vnc. Currently working on 21.04 and older versions.
You need to run the script as SUDO or it will fail to complete the installation.
You can check the status of the installed service after installation with:

<code>sudo systemctl status x11vnc</code>

Test the connection from a client. The options are DEFAULT using port 5900.

To install, 
1. download the vnc-server-installer.sh script.
2. make it executable with:
   <code>chmod +x vnc-server-installer.sh</code>
3. Run it as sudo:
   <code>sudo ./vnc-server-installer.sh</code>   

