#the next is what I define myself->me3

HISTSIZE=10000

export PATH="$PATH:/media/MATLAB/Matlab_2018a/bin/"

#if you want to use chinene as your default language
#do not change the next 4 line

##English
LANGUAGE=en_US.UTF-8
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

##Chinese
#LANGUAGE=zh_CN.UTF-8
#LANG=zh_CN.UTF-8
#LC_ALL=zh_CN.UTF-8

#zip
#zip many file once
#zip '*.zip'
#zip but messy code 
#unzip -O cp936 

export LC_CTYPE=zh_CN.UTF-8

alias cb='cd /home/syx/translate/blender_docs ; ls '
alias ct='cd /home/syx/translate/blender_docs/locale/zh/LC_MESSAGES ; ls '
alias cz='cd /home/syx/translate/blender_docs/build/zhhtml ; ls '
alias p='poedit '
alias build='sphinx-build -b html -D language=zh manual/ build/zhhtml'

alias l='ls --color=auto '
alias la='ls -A --color=auto '
alias lh='ls -lh --color=auto '
alias c='cd '
alias c.='cd ../'
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
alias le='/usr/share/vim/vim74/macros/less.sh'
alias scilab='scilab-cli'
alias or='/home/syx/download/octave/octave-4.4.0/run-octave '
alias o='octave-cli '
alias octave='octave-cli --silent'
alias matlab='matlab -nodesktop -nosplash'
alias MATLAB='matlab '
alias transmission='transmission-cli'
alias blender='/home/syx/opt/blender-2.79b-linux-glibc219-x86_64/blender'
  alias yun='~/.nutstore/dist/bin/nutstore-pydaemon.py'

#alias c='google-chrome'
#alias f='firefox'
#alias g='gedit'

#acpi
