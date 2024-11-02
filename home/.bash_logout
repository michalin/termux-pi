
if ! [ -v SSH_CLIENT ]; then
	termux-wake-unlock
        pkill sshd
	vncserver -kill :0
fi
