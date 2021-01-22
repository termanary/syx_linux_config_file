#touchpadoff:lubuntu18.04.1

# the *.deb download :
# /var/cache/apt/archives

# only could use in ubuntu, not debian :
#zip
# zip -r
#zip *.zip *
#zip but messy code 
#unzip -O cp936 
# for i in $(ls -l | grep -E .*\.zip); do unzip -O GBK $i; done
# next line could be used in debian
# unar filename

# 7zip : *.7z
# sudo apt install p7zip
# 7z x filename

# sudo apt install -f

# PS1='\l'

# bind -x '"":mate-screenshot -a'
bind -x '"\eh":htop'
bind -x '"\ev":vim'
# bind -x '"\eg":gtkwave -S main.tcl *.vcd &'
bind -x '"\eg":gtkwave *.vcd '

export HISTSIZE=100000
export EDITOR=/usr/local/bin/vim
export JAVA_HOME=/opt/jdk-12.0.2/
export PATH="\
/opt/jdk-12.0.2/bin:\
$PATH:\
/opt/firefox:\
/opt/Matlab_R2018a/Matlab_R2018a/bin:\
/opt/Altera_Quartus_18.01/quartus/bin:\
/opt/Altera_Quartus_18.01/modelsim_ase/bin:\
/opt/Xilinx_Vivado_18.03/Vivado/2018.3/bin:\
/home/syx/download/node/node-v14.2.0-linux-x64/bin:\
/opt/android-studio/bin:\
/opt/android-sdk:\
"

# locales-all : all language support
# if [ $TERM == 'linux' ] || [ $TERM == 'screen.linux' ]
# then
#     #English
#     export LANGUAGE=en_US.UTF-8
#     export LANG=en_US.UTF-8
#     export LC_CTYPE=en_US.UTF-8
#     export LC_ALL=en_US.UTF-8
# elif [ $TERM == "xterm" ] || [ $TERM == 'screen' ]
# then
#     # Chinese
#     export LANGUAGE=zh_CN.UTF-8
#     export LANG=zh_CN.UTF-8
#     export LC_CTYPE=zh_CN.UTF-8
#     export LC_ALL=zh_CN.UTF-8
#     # useless on mate :
#     # synclient TouchpadOff=1
# else
#     echo "$TERM :could not be able not set language!"
# fi

#it is necessary
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cb='cd ~/translate/blender_docs ; ls '
alias ct='cd ~/translate/blender_docs/locale/zh/LC_MESSAGES ; ls '
alias cz='cd ~/translate/blender_docs/build/zhhtml ; ls '
alias p='poedit '
alias build='sphinx-build -b html -D language=zh manual/ build/zhhtml'

alias l='ls --color=auto '
alias la='ls -A --color=auto '
alias lh='ls -lh --color=auto '
alias c='cd '
alias c.='cd ../ ; ls'
alias info='info --vi-keys'

alias df='df -h '
alias du='du -h '
alias free='free -h '

alias rm='rm -v '
alias cp='cp -ivu '
alias mv='mv -iv '

# only emacs startup from terminal could it input Chinese
alias e='emacs -nw'
alias emacs='emacs --maximized'
alias s='screen '
alias gdb='gdb -tui '
alias o='octave-cli '
alias matlab='matlab -nodesktop -nosplash'
alias MATLAB='matlab '
# java -jar Mars4_4.jar

alias pondsl='sudo pon dsl-provider '

alias gui='sudo systemctl start lightdm'
alias endgui="sudo /etc/init.d/lightdm stop"

alias g="gtkwave "

#to control the touch pad on/off only on lxde , not mate
#if not works,run
#sudo apt install xserver-xorg-input-synaptics
alias touchpadon='synclient TouchpadOff=0'
alias touchpadoff='synclient TouchpadOff=1'

alias mars='~/download/mips/Mars4_4.jar'
alias modelsim='vsim'

alias yosys="yosys -s ~/shared.ys "
alias hj='firefox /home/syx/download/java_jdk_11/docs/index.html'
alias mpv="mpv -no-border "
alias mplayer="mplayer -lavdopts threads=4 -vo fbdev2 -zoom -x 1365 -y 768 "

alias dos="sed -i 's/\r*$/\r/' "
alias unix="sed -i 's/\r*$//' "

alias watch='watch -t -n 1 '

alias tmn='sudo poff ; nmtui'

v ()
{
    if [ $# -gt 2 ]
    then
        vim $*
    elif [ $# -le 2 ]
    then
        vim -O $*
    else
        echo 'ERROR'
    fi
}

# Altera Quartus environment variables
# download libpng12 or add :/opt/kingsoft/wps-office/office6/
# QUARTUS_64BIT=1
# MWOS=linux
# MWARCH=i86
# QUARTUS_MWWM=allwm
# export QUARTUS_ROOTDIR=/media/Altera_Quartus_2/quartus
# export QUARTUS_ROOTDIR_OVERIDE=/media/Altera_Quartus_2/quartus
# export PATH=$PATH:/media/Altera_Quartus_2/quartus/bin:/media/Altera_Quartus_2/quartus/linux/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/:/usr/lib:/media/Altera_Quartus_2/quartus/linux/
export LM_LICENSE_FILE=/home/syx/Desktop/LICENSE.TXT
# unset GCC_EXEC_PREFIX 

# youtube-dl : debian package -> download from youtube 
# you-get lulu : python3 package -> download from bilibili

# sudo dpkg --add-architecture i386
# sudo apt update
# sudo apt install wine32

# sudo apt autoremove *:i386
# sudo dpkg --remove-architecture i386

# apt --fix-broken install

# create wifi for mobile:success
# nmcli device wifi hotspot ifname wlp2s0 con-name E402NA ssid ssid_E402NA password dgtg07270936
# nmcli connection modify E402NA connection.autoconnect yes
# startup wifi :
# nmcli device connect wlp2s0
# abort wifi :
# nmcli device disconnect wlp2s0
# connect a wifi:after disconnect
# nmcli device wifi connect NWPU-WLAN 
# nmcli device wifi rescan

alias disconnect="nmcli device disconnect wlp2s0"
alias NWPU_WLAN="nmcli device wifi connect NWPU-WLAN"
alias NWPU_FREE="nmcli device wifi connect NWPU-FREE"
alias nova4="nmcli device wifi connect nova4 password 7802312393fd"

# iconv -f gbk -t utf8
# 10.93.0.191
# cp /media/OS/Users/石远星/AppData/Roaming/runic\ games/torchlight/save/* ~/.runicgames/Torchlight/Save/

alias db='mysql -h139.9.119.34 -us2017302412 -pGaussDB@123 _2017302412_'
