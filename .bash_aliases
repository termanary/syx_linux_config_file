#acpi
#command:
#touchpadoff:lubuntu18.04.1

#zip
#zip many file once
#zip '*.zip'
#zip but messy code 
#unzip -O cp936 

bind -x '"\eh":htop'

HISTSIZE=100000

export EDITOR=/usr/bin/vim
export PATH="$PATH:/media/MATLAB/Matlab_2018a/bin/"
#export PATH="$PATH:$HOME/Bin/"

#if you want to use chinene as your default language
#do not change the next 4 line

#if emacs could not input chinese,uncomment the next line
#export LC_CTYPE=zh_CN.UTF-8

##English
#LANGUAGE=en_US.UTF-8
#LANG=en_US.UTF-8
#LC_ALL=en_US.UTF-8

##Chinese
#LANGUAGE=zh_CN.UTF-8
#LANG=zh_CN.UTF-8
#LC_ALL=zh_CN.UTF-8

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

alias v='$HOME/.vim/vim.sh' 
alias e='emacs -nw'
alias emacs='emacs --maximized'
alias s='screen '
alias gdb='gdb -tui '
alias o='octave-cli '
alias octave='octave-cli --silent'
alias matlab='matlab -nodesktop -nosplash'
alias MATLAB='matlab '
#alias yun='~/.nutstore/dist/bin/nutstore-pydaemon.py'

alias gui='~/.start_GUI.sh'

#to control the touch pad on/off
#alias touchpadon='synclient TouchpadOff=0'
#alias touchpadoff='synclient TouchpadOff=1'

