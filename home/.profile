export DISPLAY=":0"
if ! [ -v SSH_CLIENT ]; then
	echo "starting Debian"
	termux-wake-lock
	sshd
	vncserver -geometry 1080x2220 :0
	xhost +
	proot-distro login debian --fix-low-ports --shared-tmp 
fi


