## Openbox autostart.sh
## ====================
## When you login to your CrunchBang Openbox session, this autostart script 
## will be executed to set-up your environment and launch any applications
## you want to run at startup.
##
## More information about this can be found at:
## http://openbox.org/wiki/Help:Autostart
##
## If you do something cool with your autostart script and you think others
## could benefit from your hack, please consider sharing it at:
## http://crunchbanglinux.org/forums/
##
## Have fun! :)

# twin screen
xrandr --output DVI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-1 --mode 1920x1080 --pos 1920x0 --rotate normal

## Start Thunar Daemon
thunar --daemon &

## Set desktop wallpaper
nitrogen --restore &

## Launch panel
tint2 &

##keepass
keepass2 &

## Launch network manager applet
#(sleep 4s && nm-applet) &

## Start xscreensaver
xscreensaver -no-splash &

## Start Conky after a slight delay
(sleep 3s && conky -q -c ~/.conky/conkyrc) &


## Start volumeicon after a slight delay
volumeicon &

## Start Clipboard manager
(sleep 3s && parcellite) &

# quake-style console
#tilda &

# no mouse acceleration.
#xset m 1 1 & 

# dropbox
~/.dropbox-dist/dropboxd &

#SSH-agent

SSHAGENT="/usr/bin/ssh-agent"
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
        eval $($SSHAGENT $SSHAGENTARGS)
        trap "kill $SSH_AGENT_PID" 0
fi

export NSS_SSL_CBC_RANDOM_IV=0
pidgin &

# SQUIGGLY ALL THE Cs!
setxkbmap -option compose:ralt


