#!/bin/bash

# Detta skript är skapat för Pop_OS (som baseras på Ubuntu).
# För nuvarande så används endast 'apt' för att installera program, men fler pakethanterare kommer att läggas till i framtiden.
# Alla keybindings gäller för gnome.

echo "Installationsskript till Linux-baserade operativsystem"
echo "Vill du att skriptet ska inkludera gnome-inställningar? (j/n)"
read -r user_choice

function gnome_keybindings () {
	gsettings set org.gnome.mutter dynamic-workspaces false ;
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 8 ;
	gsettings set org.gnome.shell.keybindings switch-to-application-1 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-2 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-3 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-4 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-5 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-6 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-7 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-8 [] ;
	gsettings set org.gnome.shell.keybindings switch-to-application-9 [] ;

	## KEYBINDINGS: Navigera mellan workspaces
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Super>7']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Super>8']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super>9']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Super>0']" ;

	## KEYBINDINGS: Hantera fönster
	gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Super>q', '<Shift><Super>q', '<Alt><Super>q']" ;
	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>m', '<Super>space']" ;
	gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>section']" ;

	## KEYBINDINGS: Hantera övrigt
	gsettings set org.gnome.settings-daemon.plugins.media-keys screenreader "[]" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys on-screen-keyboard "['<Primary>Page_Up']" ;

	## KEYBINDINGS: Flytta fönster mellan skärmar
	gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-right "['<Shift><Super>Right', '<Shift><Super>KP_Right', '<Shift><Super>l', '<Primary><Super>d']" ;
	gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-left "['<Shift><Super>Left', '<Shift><Super>KP_Left', '<Shift><Super>h', '<Primary><Super>a']" ;
	gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-up "['<Primary><Shift><Super>Up', '<Primary><Shift><Super>KP_Up', '<Primary><Shift><Super>k', '<Primary><Super>w']" ;
	gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-down "['<Primary><Shift><Super>Down', '<Primary><Shift><Super>KP_Down', '<Primary><Shift><Super>j', '<Primary><Super>s']" ;

	## KEYBINDINGS: Flytta fönster mellan workspaces
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>1']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Shift>2']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Shift>3']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Shift>4']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super><Shift>5']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super><Shift>6']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Super><Shift>7']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Super><Shift>8']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Super><Shift>9']"  ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Super><Shift>0']" ;
	gsettings set org.gnome.shell.extensions.pop-shell pop-workspace-down "['<Shift><Super>Down', '<Shift><Super>KP_Down', '<Shift><Super>j', '<Shift><Super>s']" ;
	gsettings set org.gnome.shell.extensions.pop-shell pop-workspace-up "['<Shift><Super>Up', '<Shift><Super>KP_Up', '<Shift><Super>k', '<Shift><Super>w']" ;
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Shift><Super>End', '<Shift><Super>greater', '<Shift><Super>greater']" ;

	## KEYBINDINGS: Flytta fokus mellan fönster
	gsettings set org.gnome.shell.extensions.pop-shell focus-down "['<Super>Down', '<Super>KP_Down', '<Super>j', '<Alt><Super>s', '<Alt><Super>Down']" ;
	gsettings set org.gnome.shell.extensions.pop-shell focus-up "['<Super>Up', '<Super>KP_Up', '<Super>k', '<Alt><Super>w', '<Alt><Super>Up']" ;
	gsettings set org.gnome.shell.extensions.pop-shell focus-left "['<Super>Left', '<Super>KP_Left', '<Super>h', '<Alt><Super>a', '<Alt><Super>Left']" ;
	gsettings set org.gnome.shell.extensions.pop-shell focus-right "['<Super>Right', '<Super>KP_Right', '<Super>l', '<Alt><Super>d', '<Alt><Super>Right']" ;

	## KEYBINDINGS: Mediagenvägar
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['<Primary><Super>c']" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['<Primary><Super>z']" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['<Primary><Super>x']" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys play "['<Super>x']" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Super>z']" ;
	gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Super>c']" ;
}

function install_software () {
	# Development
	sudo npm install -g n
	sudo n latest # node.js
	sudo apt install npm -y
    sudo apt install shellcheck
	
	## GitHub CLI
	type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
	&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
	## SURGE
	sudo npm install --global surge
	sudo npm i --package-lock-only
	sudo npm audit fix --force
	## Visual Studio Code
	sudo apt update
	sudo apt install software-properties-common apt-transport-https
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt update
	sudo apt install code
	## VSCodium
	#wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
	#    | gpg --dearmor \
	#    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
	#echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
	#    | sudo tee /etc/apt/sources.list.d/vscodium.list
	#sudo apt update && sudo apt install codium
	## .NET SDK
	wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
	sudo dpkg -i packages-microsoft-prod.deb
	rm packages-microsoft-prod.deb
	sudo apt-get update && \
	  sudo apt-get install -y dotnet-sdk-8.0

	# Verktyg
	sudo apt install translate-shell -y
	sudo apt install speedtest-cli -y
	sudo apt install micro -y
	sudo apt install taskwarrior -y
	sudo apt install tldr -y && tldr -u
	sudo apt install duf -y
	sudo apt install snapd -y
	sudo apt install nala -y
	sudo apt install guake # En quake-liknande terminal
	
	## Brave browser
	sudo apt install curl
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update
	sudo apt install brave-browser

	# SE EFTER FÖR ETT SÄTT ATT FÅ INSTALL ATT VÄNTA PÅ WGET
	# wget https://zoom.us/client/latest/zoom_amd64.deb
	# sudo apt install ./zoom_amd64.deb

	# TODO: Inkludera Tidal-HiFi
	sudo snap install discord
	sudo apt install steam
	sudo apt install protontricks
	sudo apt install timeshift
	sudo apt install gnome-tweaks
	sudo apt install gnome-shell-extension-manager -y
}


function add_aliases () {
	touch ~/.bash_aliases
	echo "alias GS='git status'" >> ~/.bash_aliases
	echo "alias GA='git add'" >> ~/.bash_aliases
	echo "alias GAA='git add --all'" >> ~/.bash_aliases
	echo "alias GC='git commit -m'" >> ~/.bash_aliases
	echo "alias GPS='git push'" >> ~/.bash_aliases
	echo "alias GPL='git pull'" >> ~/.bash_aliases
	echo "alias c='clear'" >> ~/.bash_aliases
	echo "alias ap='nala'" >> ~/.bash_aliases
	echo "alias ..='cd ..'" >> ~/.bash_aliases
	echo "alias l.='ls -d .*'" >> ~/.bash_aliases
}

function configure_settings () {
	sudo ufw enable
	# TODO: Lägg in så branch-namn visas i terminalen
	# TODO: LÄGG IN gh auth login + git config --global init.defaultBranch main
	sudo timeshift --create #TODO: Ska evalueras hur den fungerar i praktiken
    # TODO: git config --global user.email <exempel>
    # TODO: git config --global user.name <exempel>
	
}

##### HÄR KÖRS SKRIPTET #####
if [ "$user_choice" = "j" ]; then gnome_keybindings; fi
install_software
add_aliases
configure_settings
#############################