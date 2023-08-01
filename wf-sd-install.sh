#!/usr/bin/env bash

# define locations for relevant files
CFGDIR="$HOME/.local/share/Steam/steamapps/compatdata/230410/pfx/drive_c/users/steamuser/AppData/Local/Warframe"
CFGPATH="$CFGDIR/EE.cfg"

zen() {
	zenity 2> >(grep -v 'Gtk' >&2) "$@"
}

# check connection (again)
if ! curl -Is https://github.com | head -1 | grep 200 > /dev/null ; then
	zen --error --text="Could not reach GitHub; please check your internet connection and try again."
	exit 1
fi

# ensure target location exists
mkdir -p "$CFGDIR"

displace() {
	i=1
	while [[ -e "${1}_$i" ]] ; do ((i=i+1)) ; done
	mv "$1" "${1}_$i"
}

rm /tmp/EE.cfg
if ! curl -S -s -f -L -O --output-dir /tmp/ --connect-timeout 60 https://raw.githubusercontent.com/zetaPRIME/wf-sd/main/EE.cfg; then
	zen --error --text="Error downloading EE.cfg."
	exit
fi

[[ -f "$CFGPATH" ]] && { # if EE.cfg already exists...
	grep "Client.Email=" "$CFGPATH" >> /tmp/EE.cfg # carry saved login into our new config
	displace "$CFGPATH" # and back up
}
mv /tmp/EE.cfg "$CFGPATH"

zen --info --text "Installation complete!"
