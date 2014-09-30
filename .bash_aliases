# set dircloor of ls cmd
eval `dircolors -b $HOME/sysconfig/dircolors/dircolors.256dark`

#set screen to support color 256
export TERM="screen-256color"

#set tmux alias
alias tmux='tmux -2'

#set arm cross compile
export PATH="$HOME/sysconfig/arm-linux-gcc-4.3.2/usr/local/arm/4.3.2/bin:$HOME/local/bin:$PATH"
