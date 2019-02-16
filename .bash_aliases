#touchpadoff:lubuntu18.04.1

# the *.deb download :
# /var/cache/apt/archives

#zip
#zip many file once
#zip '*.zip'
#zip but messy code 
#unzip -O cp936 
# for i in $(ls -l | grep -E .*\.zip); do unzip -O GBK $i; done

bind -x '"\eh":htop'
bind -x '"\ev":vim'
bind -x '"\eg":gtkwave *.vcd &'

export HISTSIZE=100000
export EDITOR=/usr/local/bin/vim
export PATH="$PATH:\
/opt/firefox:\
/media/MATLAB/Matlab_R2018a/bin:\
/media/Altera_Quartus_2/Altera_Quartus_18_1/quartus/bin:\
/media/Altera_Quartus_2/Altera_Quartus_18_1/quartus/linux64:
"

# locales-all : all language support
if [ $TERM == 'linux' ] || [ $TERM == 'screen.linux' ]
then
    #English
    export LANGUAGE=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LC_CTYPE=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
elif [ $TERM == "xterm" ] || [ $TERM == 'screen' ]
then
    # Chinese
    export LANGUAGE=zh_CN.UTF-8
    export LANG=zh_CN.UTF-8
    export LC_CTYPE=zh_CN.UTF-8
    export LC_ALL=zh_CN.UTF-8
    # useless on mate :
    # synclient TouchpadOff=1
else
    echo "$TERM :could not be able not set language!"
fi

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

alias cv='cd /media/Program/verilog/first/'

alias df='df -h '
alias du='du -h '
alias free='free -h '

alias rm='rm -v '
alias cp='cp -ivu '
alias mv='mv -iv '

alias e='emacs -nw'
alias emacs='emacs --maximized'
alias s='screen '
alias gdb='gdb -tui '
alias o='octave-cli '
alias matlab='matlab -nodesktop -nosplash'
alias MATLAB='matlab '

alias gui='systemctl start lightdm'
alias endgui="/etc/init.d/lightdm stop"

alias g="gtkwave "

#to control the touch pad on/off only on lxde , not mate
#if not works,run
#sudo apt install xserver-xorg-input-synaptics
alias touchpadon='synclient TouchpadOff=0'
alias touchpadoff='synclient TouchpadOff=1'

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

alias pondsl='sudo pon dsl-provider '

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

alias yosys="yosys -s ~/shared.ys "


# sudo dpkg --add-architecture i386
# sudo apt update
# sudo apt install wine32

# sudo apt autoremove *:i386
# sudo dpkg --remove-architecture i386

