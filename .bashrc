PS1='\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1;31m\]\[\e[1;36m\]\[\033[m\]\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]'

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

