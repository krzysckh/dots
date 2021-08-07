if [ $TERM = 'xterm-256color' ]
then
	tilix &
	exit
fi
if [ $TERM = 'rxvt-unicode-256color' ]
then
	urxvt &
	exit
else
	echo "????"
fi
